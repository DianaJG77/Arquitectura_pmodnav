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

class Mag {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.deviceID = null;
      this.mag_x = null;
      this.mag_y = null;
      this.mag_z = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Mag
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [deviceID]
    bufferOffset = _serializer.int32(obj.deviceID, buffer, bufferOffset);
    // Serialize message field [mag_x]
    bufferOffset = _serializer.float32(obj.mag_x, buffer, bufferOffset);
    // Serialize message field [mag_y]
    bufferOffset = _serializer.float32(obj.mag_y, buffer, bufferOffset);
    // Serialize message field [mag_z]
    bufferOffset = _serializer.float32(obj.mag_z, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Mag
    let len;
    let data = new Mag(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [deviceID]
    data.deviceID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [mag_x]
    data.mag_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mag_y]
    data.mag_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mag_z]
    data.mag_z = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/Mag';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ba5a5347ac523925835e1f68e04750c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    int32 deviceID
    float32 mag_x
    float32 mag_y
    float32 mag_z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Mag(null);
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

    return resolved;
    }
};

module.exports = Mag;
