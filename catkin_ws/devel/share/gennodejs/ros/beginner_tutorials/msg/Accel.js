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

class Accel {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.deviceID = null;
      this.accel_x = null;
      this.accel_y = null;
      this.accel_z = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('deviceID')) {
        this.deviceID = initObj.deviceID
      }
      else {
        this.deviceID = 0;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Accel
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [deviceID]
    bufferOffset = _serializer.int32(obj.deviceID, buffer, bufferOffset);
    // Serialize message field [accel_x]
    bufferOffset = _serializer.float32(obj.accel_x, buffer, bufferOffset);
    // Serialize message field [accel_y]
    bufferOffset = _serializer.float32(obj.accel_y, buffer, bufferOffset);
    // Serialize message field [accel_z]
    bufferOffset = _serializer.float32(obj.accel_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Accel
    let len;
    let data = new Accel(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [deviceID]
    data.deviceID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [accel_x]
    data.accel_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accel_y]
    data.accel_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accel_z]
    data.accel_z = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/Accel';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1b08ed2f1c5084f033c7c9b5231e4229';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    int32 deviceID
    float32 accel_x
    float32 accel_y
    float32 accel_z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Accel(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.deviceID !== undefined) {
      resolved.deviceID = msg.deviceID;
    }
    else {
      resolved.deviceID = 0
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

    return resolved;
    }
};

module.exports = Accel;
