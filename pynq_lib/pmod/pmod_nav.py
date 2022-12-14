#   Copyright (c) 2016, Xilinx, Inc.
#   All rights reserved.
# 
#   Redistribution and use in source and binary forms, with or without 
#   modification, are permitted provided that the following conditions are met:
#
#   1.  Redistributions of source code must retain the above copyright notice, 
#       this list of conditions and the following disclaimer.
#
#   2.  Redistributions in binary form must reproduce the above copyright 
#       notice, this list of conditions and the following disclaimer in the 
#       documentation and/or other materials provided with the distribution.
#
#   3.  Neither the name of the copyright holder nor the names of its 
#       contributors may be used to endorse or promote products derived from 
#       this software without specific prior written permission.
#
#   THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
#   AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, 
#   THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR 
#   PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR 
#   CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
#   EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, 
#   PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS;
#   OR BUSINESS INTERRUPTION). HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
#   WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR 
#   OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF 
#   ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


from . import Pmod


__author__ = "Diana Jimenez"
__copyright__ = "Copyright 2022, Rey Juan Carlos University"
__email__ = "d.jimenez.2017@alumnos.urjc.es"


PMOD_NAV_PROGRAM = "pmod_nav.bin"
GET_AG_ID = 0x1
READ_ACCEL = 0x10
READ_GYRO = 0X15
GET_MAG_ID = 0x2
READ_MAG = 0X20
GET_ALT_ID = 0x4
READ_ALT = 0X40
READ_TEMP =0X45

""" CA2: Max Number 32 bits """
UINTMAX = 4294967295-1


class Pmod_NAV(object):
    """This class controls an NAV Pmod.

    The Pmod NAV uses the LSM9DS1 3-axis accelerometer, 3-axis gyroscope, 3-axis magnetometer, plus the LPS25HB digital barometer to provide users with 10-DOF functionality.
    
    Attributes
    ----------
    microblaze : Pmod
        Microblaze processor instance used by this module.

    """

    def __init__(self, mb_info, text=None):
        """Return a new instance of an OLED object. 
        
        Parameters
        ----------
        mb_info : dict
            A dictionary storing Microblaze information, such as the
            IP name and the reset name.
        text: str
            The text to be displayed after initialization.
            
        """
        self.microblaze = Pmod(mb_info, PMOD_NAV_PROGRAM)
            
    def get_ag_id(self):
        """The function gets the device id for all the instruments.
        
        Returns
        -------
        list
            A list of the device ID Accel-Gyro, Mag and alt.
        
        """             
        self.microblaze.write_blocking_command(GET_AG_ID)
        data = self.microblaze.read_mailbox(0)
        return data 

 
 
    def read_accel(self):
        """The function gets the device id for all the instruments.
        
        Returns
        -------
        list
            A list of the device ID Accel-Gyro, Mag and alt.
        
        """             
        self.microblaze.write_blocking_command(READ_ACCEL)
        data = self.microblaze.read_mailbox(0, 3)
        for x in range(len(data)):
            if (data[x] > 214783647):
                data[x] = float(data[x]-UINTMAX) * 0.000061
            else:
                data[x] = float(data[x]) * 0.000061
        return data

    def read_gyro(self):
        """The function gets the device id for all the instruments.

        Returns
        -------
        list
            A list of the device ID Accel-Gyro, Mag and alt.

        """
        self.microblaze.write_blocking_command(READ_GYRO)
        data = self.microblaze.read_mailbox(0, 3)
        for x in range(len(data)):
            if (data[x] > 214783647):
                data[x] = float(data[x]-UINTMAX) * 0.00875
            else:
                data[x] = float(data[x]) * 0.00875
        return data
    

    def get_mag_id(self):
        """The function gets the device id for all the instruments.
        
        Returns
        -------
        list
            A list of the device ID Accel-Gyro, Mag and alt.
        
        """             
        self.microblaze.write_blocking_command(GET_MAG_ID)
        data = self.microblaze.read_mailbox(0)
        return data
        
    def read_mag(self):
        """The function gets the device id for all the instruments.
        
        Returns
        -------
        list
            A list of the device ID Accel-Gyro, Mag and alt.
        
        """             
        self.microblaze.write_blocking_command(READ_MAG)
        data = self.microblaze.read_mailbox(0, 3)
        for x in range(len(data)):
            if (data[x] > 214783647):
                data[x] = float(data[x]-UINTMAX) * 0.00014
            else:
                data[x] = float(data[x]) * 0.00014
        return data
    
    def get_alt_id(self):
        """The function gets the device id for all the instruments.
        Returns
        -------
        list
           A list of the device ID Accel-Gyro, Mag and alt.
        """             
        self.microblaze.write_blocking_command(GET_ALT_ID)
        data = self.microblaze.read_mailbox(0)
        return data
        
    def read_alt(self):
        """The function gets the device id for all the instruments.
        
        Returns
        -------
        list
            A list of the device ID Accel-Gyro, Mag and alt.
        
        """             
        self.microblaze.write_blocking_command(READ_ALT)
        data = self.microblaze.read_mailbox(0)
        if (data > 214783647):
            data = (float(data-UINTMAX)) / 4096.0
        else:
            data = (float(data)) / 4096.0
        return data
        
    def read_temp(self):
        """The function gets the device id for all the instruments.
        
        Returns
        -------
        list
            A list of the device ID Accel-Gyro, Mag and alt.
        
        """             
        self.microblaze.write_blocking_command(READ_TEMP)
        data = self.microblaze.read_mailbox(0)
        if (data > 214783647):
            data = (float(data-UINTMAX) * 0.002083) + 42.5
        else:
            data = (float(data) * 0.002083) + 42.5
        return data
