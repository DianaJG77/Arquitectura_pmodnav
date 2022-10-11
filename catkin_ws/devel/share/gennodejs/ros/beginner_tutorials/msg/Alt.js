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

class Alt {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.deviceID = null;
      this.alt = null;
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
      if (initObj.hasOwnProperty('alt')) {
        this.alt = initObj.alt
      }
      else {
        this.alt = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Alt
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [deviceID]
    bufferOffset = _serializer.int32(obj.deviceID, buffer, bufferOffset);
    // Serialize message field [alt]
    bufferOffset = _serializer.float32(obj.alt, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Alt
    let len;
    let data = new Alt(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [deviceID]
    data.deviceID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [alt]
    data.alt = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'beginner_tutorials/Alt';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '52be1a4c5564c1815f865d5839c779ee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    int32 deviceID
    float32 alt
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Alt(null);
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

    if (msg.alt !== undefined) {
      resolved.alt = msg.alt;
    }
    else {
      resolved.alt = 0.0
    }

    return resolved;
    }
};

module.exports = Alt;
