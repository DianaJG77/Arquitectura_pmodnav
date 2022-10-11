// Auto-generated. Do not edit!

// (in-package beginner_tutorials.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PmodNav {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name_accel_gyro = null;
      this.deviceID_accel_gyro = null;
      this.accel_x = null;
      this.accel_y = null;
      this.accel_z = null;
      this.gyro_x = null;
      this.gyro_y = null;
      this.gyro_z = null;
      this.name_mag = null;
      this.deviceID_mag = null;
      this.mag_x = null;
      this.mag_y = null;
      this.mag_z = null;
      this.name_alt_temp = null;
      this.deviceID_alt_temp = null;
      this.alt = null;
      this.temp = null;
    }
    else {
      if (initObj.hasOwnProperty('name_accel_gyro')) {
        this.name_accel_gyro = initObj.name_accel_gyro
      }
      else {
        this.name_accel_gyro = '';
      }
      if (initObj.hasOwnProperty('deviceID_accel_gyro')) {
        this.deviceID_accel_gyro = initObj.deviceID_accel_gyro
      }
      else {
        this.deviceID_accel_gyro = 0;
      }
      if (initObj.hasOwnProperty('accel_x')) {
        this.accel_x = initObj.accel_x
      }
      else {
        this.accel_x = 0.0;
      }
      if (initObj.hasOwnProperty('accel_y')) {
        this.accel_y = initObj.accel_y
      }
      else {
        this.accel_y = 0.0;
      }
      if (initObj.hasOwnProperty('accel_z')) {
        this.accel_z = initObj.accel_z
      }
      else {
        this.accel_z = 0.0;
      }
      if (initObj.hasOwnProperty('gyro_x')) {
        this.gyro_x = initObj.gyro_x
      }
      else {
        this.gyro_x = 0.0;
      }
      if (initObj.hasOwnProperty('gyro_y')) {
        this.gyro_y = initObj.gyro_y
      }
      else {
        this.gyro_y = 0.0;
      }
      if (initObj.hasOwnProperty('gyro_z')) {
        this.gyro_z = initObj.gyro_z
      }
      else {
        this.gyro_z = 0.0;
      }
      if (initObj.hasOwnProperty('name_mag')) {
        this.name_mag = initObj.name_mag
      }
      else {
        this.name_mag = '';
      }
      if (initObj.hasOwnProperty('deviceID_mag')) {
        this.deviceID_mag = initObj.deviceID_mag
      }
      else {
        this.deviceID_mag = 0;
      }
      if (initObj.hasOwnProperty('mag_x')) {
        this.mag_x = initObj.mag_x
      }
      else {
        this.mag_x = 0.0;
      }
      if (initObj.hasOwnProperty('mag_y')) {
        this.mag_y = initObj.mag_y
      }
      else {
        this.mag_y = 0.0;
      }
      if (initObj.hasOwnProperty('mag_z')) {
        this.mag_z = initObj.mag_z
      }
      else {
        this.mag_z = 0.0;
      }
      if (initObj.hasOwnProperty('name_alt_temp')) {
        this.name_alt_temp = initObj.name_alt_temp
      }
      else {
        this.name_alt_temp = '';
      }
      if (initObj.hasOwnProperty('deviceID_alt_temp')) {
        this.deviceID_alt_temp = initObj.deviceID_alt_temp
      }
      else {
        this.deviceID_alt_temp = 0;
      }
      if (initObj.hasOwnProperty('alt')) {
        this.alt = initObj.alt
      }
      else {
        this.alt = 0.0;
      }
      if (initObj.hasOwnProperty('temp')) {
        this.temp = initObj.temp
      }
      else {
        this.temp = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PmodNav
    // Serialize message field [name_accel_gyro]
    bufferOffset = _serializer.string(obj.name_accel_gyro, buffer, bufferOffset);
    // Serialize message field [deviceID_accel_gyro]
    bufferOffset = _serializer.int32(obj.deviceID_accel_gyro, buffer, bufferOffset);
    // Serialize message field [accel_x]
    bufferOffset = _serializer.float32(obj.accel_x, buffer, bufferOffset);
    // Serialize message field [accel_y]
    bufferOffset = _serializer.float32(obj.accel_y, buffer, bufferOffset);
    // Serialize message field [accel_z]
    bufferOffset = _serializer.float32(obj.accel_z, buffer, bufferOffset);
    // Serialize message field [gyro_x]
    bufferOffset = _serializer.float32(obj.gyro_x, buffer, bufferOffset);
    // Serialize message field [gyro_y]
    bufferOffset = _serializer.float32(obj.gyro_y, buffer, bufferOffset);
    // Serialize message field [gyro_z]
    bufferOffset = _serializer.float32(obj.gyro_z, buffer, bufferOffset);
    // Serialize message field [name_mag]
    bufferOffset = _serializer.string(obj.name_mag, buffer, bufferOffset);
    // Serialize message field [deviceID_mag]
    bufferOffset = _serializer.int32(obj.deviceID_mag, buffer, bufferOffset);
    // Serialize message field [mag_x]
    bufferOffset = _serializer.float32(obj.mag_x, buffer, bufferOffset);
    // Serialize message field [mag_y]
    bufferOffset = _serializer.float32(obj.mag_y, buffer, bufferOffset);
    // Serialize message field [mag_z]
    bufferOffset = _serializer.float32(obj.mag_z, buffer, bufferOffset);
    // Serialize message field [name_alt_temp]
    bufferOffset = _serializer.string(obj.name_alt_temp, buffer, bufferOffset);
    // Serialize message field [deviceID_alt_temp]
    bufferOffset = _serializer.int32(obj.deviceID_alt_temp, buffer, bufferOffset);
    // Serialize message field [alt]
    bufferOffset = _serializer.float32(obj.alt, buffer, bufferOffset);
    // Serialize message field [temp]
    bufferOffset = _serializer.float32(obj.temp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PmodNav
    let len;
    let data = new PmodNav(null);
    // Deserialize message field [name_accel_gyro]
    data.name_accel_gyro = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [deviceID_accel_gyro]
    data.deviceID_accel_gyro = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [accel_x]
    data.accel_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accel_y]
    data.accel_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accel_z]
    data.accel_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyro_x]
    data.gyro_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyro_y]
    data.gyro_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gyro_z]
    data.gyro_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [name_mag]
    data.name_mag = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [deviceID_mag]
    data.deviceID_mag = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mag_x]
    data.mag_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mag_y]
    data.mag_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mag_z]
    data.mag_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [name_alt_temp]
    data.name_alt_temp = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [deviceID_alt_temp]
    data.deviceID_alt_temp = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [alt]
    data.alt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [temp]
    data.temp = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name_accel_gyro);
    length += _getByteLength(object.name_mag);
    length += _getByteLength(object.name_alt_temp);
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/PmodNav';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b0aaed9046365d75b6b5593dfab947b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name_accel_gyro
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
    
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PmodNav(null);
    if (msg.name_accel_gyro !== undefined) {
      resolved.name_accel_gyro = msg.name_accel_gyro;
    }
    else {
      resolved.name_accel_gyro = ''
    }

    if (msg.deviceID_accel_gyro !== undefined) {
      resolved.deviceID_accel_gyro = msg.deviceID_accel_gyro;
    }
    else {
      resolved.deviceID_accel_gyro = 0
    }

    if (msg.accel_x !== undefined) {
      resolved.accel_x = msg.accel_x;
    }
    else {
      resolved.accel_x = 0.0
    }

    if (msg.accel_y !== undefined) {
      resolved.accel_y = msg.accel_y;
    }
    else {
      resolved.accel_y = 0.0
    }

    if (msg.accel_z !== undefined) {
      resolved.accel_z = msg.accel_z;
    }
    else {
      resolved.accel_z = 0.0
    }

    if (msg.gyro_x !== undefined) {
      resolved.gyro_x = msg.gyro_x;
    }
    else {
      resolved.gyro_x = 0.0
    }

    if (msg.gyro_y !== undefined) {
      resolved.gyro_y = msg.gyro_y;
    }
    else {
      resolved.gyro_y = 0.0
    }

    if (msg.gyro_z !== undefined) {
      resolved.gyro_z = msg.gyro_z;
    }
    else {
      resolved.gyro_z = 0.0
    }

    if (msg.name_mag !== undefined) {
      resolved.name_mag = msg.name_mag;
    }
    else {
      resolved.name_mag = ''
    }

    if (msg.deviceID_mag !== undefined) {
      resolved.deviceID_mag = msg.deviceID_mag;
    }
    else {
      resolved.deviceID_mag = 0
    }

    if (msg.mag_x !== undefined) {
      resolved.mag_x = msg.mag_x;
    }
    else {
      resolved.mag_x = 0.0
    }

    if (msg.mag_y !== undefined) {
      resolved.mag_y = msg.mag_y;
    }
    else {
      resolved.mag_y = 0.0
    }

    if (msg.mag_z !== undefined) {
      resolved.mag_z = msg.mag_z;
    }
    else {
      resolved.mag_z = 0.0
    }

    if (msg.name_alt_temp !== undefined) {
      resolved.name_alt_temp = msg.name_alt_temp;
    }
    else {
      resolved.name_alt_temp = ''
    }

    if (msg.deviceID_alt_temp !== undefined) {
      resolved.deviceID_alt_temp = msg.deviceID_alt_temp;
    }
    else {
      resolved.deviceID_alt_temp = 0
    }

    if (msg.alt !== undefined) {
      resolved.alt = msg.alt;
    }
    else {
      resolved.alt = 0.0
    }

    if (msg.temp !== undefined) {
      resolved.temp = msg.temp;
    }
    else {
      resolved.temp = 0.0
    }

    return resolved;
    }
};

module.exports = PmodNav;
