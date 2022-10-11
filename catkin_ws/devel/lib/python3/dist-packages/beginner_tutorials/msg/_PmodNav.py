# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from beginner_tutorials/PmodNav.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class PmodNav(genpy.Message):
  _md5sum = "0b0aaed9046365d75b6b5593dfab947b"
  _type = "beginner_tutorials/PmodNav"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """string name_accel_gyro
int32 deviceID_accel_gyro
float32 accel_x
float32 accel_y
float32 accel_z
float32 gyro_x
float32 gyro_y
float32 gyro_z
string name_mag
int32 deviceID_mag
float32 mag_x
float32 mag_y
float32 mag_z
string name_alt_temp
int32 deviceID_alt_temp
float32 alt
float32 temp


"""
  __slots__ = ['name_accel_gyro','deviceID_accel_gyro','accel_x','accel_y','accel_z','gyro_x','gyro_y','gyro_z','name_mag','deviceID_mag','mag_x','mag_y','mag_z','name_alt_temp','deviceID_alt_temp','alt','temp']
  _slot_types = ['string','int32','float32','float32','float32','float32','float32','float32','string','int32','float32','float32','float32','string','int32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       name_accel_gyro,deviceID_accel_gyro,accel_x,accel_y,accel_z,gyro_x,gyro_y,gyro_z,name_mag,deviceID_mag,mag_x,mag_y,mag_z,name_alt_temp,deviceID_alt_temp,alt,temp

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PmodNav, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.name_accel_gyro is None:
        self.name_accel_gyro = ''
      if self.deviceID_accel_gyro is None:
        self.deviceID_accel_gyro = 0
      if self.accel_x is None:
        self.accel_x = 0.
      if self.accel_y is None:
        self.accel_y = 0.
      if self.accel_z is None:
        self.accel_z = 0.
      if self.gyro_x is None:
        self.gyro_x = 0.
      if self.gyro_y is None:
        self.gyro_y = 0.
      if self.gyro_z is None:
        self.gyro_z = 0.
      if self.name_mag is None:
        self.name_mag = ''
      if self.deviceID_mag is None:
        self.deviceID_mag = 0
      if self.mag_x is None:
        self.mag_x = 0.
      if self.mag_y is None:
        self.mag_y = 0.
      if self.mag_z is None:
        self.mag_z = 0.
      if self.name_alt_temp is None:
        self.name_alt_temp = ''
      if self.deviceID_alt_temp is None:
        self.deviceID_alt_temp = 0
      if self.alt is None:
        self.alt = 0.
      if self.temp is None:
        self.temp = 0.
    else:
      self.name_accel_gyro = ''
      self.deviceID_accel_gyro = 0
      self.accel_x = 0.
      self.accel_y = 0.
      self.accel_z = 0.
      self.gyro_x = 0.
      self.gyro_y = 0.
      self.gyro_z = 0.
      self.name_mag = ''
      self.deviceID_mag = 0
      self.mag_x = 0.
      self.mag_y = 0.
      self.mag_z = 0.
      self.name_alt_temp = ''
      self.deviceID_alt_temp = 0
      self.alt = 0.
      self.temp = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self.name_accel_gyro
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i6f().pack(_x.deviceID_accel_gyro, _x.accel_x, _x.accel_y, _x.accel_z, _x.gyro_x, _x.gyro_y, _x.gyro_z))
      _x = self.name_mag
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i3f().pack(_x.deviceID_mag, _x.mag_x, _x.mag_y, _x.mag_z))
      _x = self.name_alt_temp
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i2f().pack(_x.deviceID_alt_temp, _x.alt, _x.temp))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name_accel_gyro = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.name_accel_gyro = str[start:end]
      _x = self
      start = end
      end += 28
      (_x.deviceID_accel_gyro, _x.accel_x, _x.accel_y, _x.accel_z, _x.gyro_x, _x.gyro_y, _x.gyro_z,) = _get_struct_i6f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name_mag = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.name_mag = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.deviceID_mag, _x.mag_x, _x.mag_y, _x.mag_z,) = _get_struct_i3f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name_alt_temp = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.name_alt_temp = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.deviceID_alt_temp, _x.alt, _x.temp,) = _get_struct_i2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self.name_accel_gyro
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i6f().pack(_x.deviceID_accel_gyro, _x.accel_x, _x.accel_y, _x.accel_z, _x.gyro_x, _x.gyro_y, _x.gyro_z))
      _x = self.name_mag
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i3f().pack(_x.deviceID_mag, _x.mag_x, _x.mag_y, _x.mag_z))
      _x = self.name_alt_temp
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_i2f().pack(_x.deviceID_alt_temp, _x.alt, _x.temp))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name_accel_gyro = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.name_accel_gyro = str[start:end]
      _x = self
      start = end
      end += 28
      (_x.deviceID_accel_gyro, _x.accel_x, _x.accel_y, _x.accel_z, _x.gyro_x, _x.gyro_y, _x.gyro_z,) = _get_struct_i6f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name_mag = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.name_mag = str[start:end]
      _x = self
      start = end
      end += 16
      (_x.deviceID_mag, _x.mag_x, _x.mag_y, _x.mag_z,) = _get_struct_i3f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.name_alt_temp = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.name_alt_temp = str[start:end]
      _x = self
      start = end
      end += 12
      (_x.deviceID_alt_temp, _x.alt, _x.temp,) = _get_struct_i2f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i2f = None
def _get_struct_i2f():
    global _struct_i2f
    if _struct_i2f is None:
        _struct_i2f = struct.Struct("<i2f")
    return _struct_i2f
_struct_i3f = None
def _get_struct_i3f():
    global _struct_i3f
    if _struct_i3f is None:
        _struct_i3f = struct.Struct("<i3f")
    return _struct_i3f
_struct_i6f = None
def _get_struct_i6f():
    global _struct_i6f
    if _struct_i6f is None:
        _struct_i6f = struct.Struct("<i6f")
    return _struct_i6f
