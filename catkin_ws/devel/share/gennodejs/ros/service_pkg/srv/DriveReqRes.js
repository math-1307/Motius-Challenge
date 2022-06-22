// Auto-generated. Do not edit!

// (in-package service_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class DriveReqResRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lin_vel = null;
      this.ang_vel = null;
    }
    else {
      if (initObj.hasOwnProperty('lin_vel')) {
        this.lin_vel = initObj.lin_vel
      }
      else {
        this.lin_vel = 0.0;
      }
      if (initObj.hasOwnProperty('ang_vel')) {
        this.ang_vel = initObj.ang_vel
      }
      else {
        this.ang_vel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DriveReqResRequest
    // Serialize message field [lin_vel]
    bufferOffset = _serializer.float64(obj.lin_vel, buffer, bufferOffset);
    // Serialize message field [ang_vel]
    bufferOffset = _serializer.float64(obj.ang_vel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DriveReqResRequest
    let len;
    let data = new DriveReqResRequest(null);
    // Deserialize message field [lin_vel]
    data.lin_vel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ang_vel]
    data.ang_vel = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'service_pkg/DriveReqResRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dd1e8ef004904e0cf53b02a52a0e1b4e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 lin_vel
    float64 ang_vel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DriveReqResRequest(null);
    if (msg.lin_vel !== undefined) {
      resolved.lin_vel = msg.lin_vel;
    }
    else {
      resolved.lin_vel = 0.0
    }

    if (msg.ang_vel !== undefined) {
      resolved.ang_vel = msg.ang_vel;
    }
    else {
      resolved.ang_vel = 0.0
    }

    return resolved;
    }
};

class DriveReqResResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msg_feedback = null;
    }
    else {
      if (initObj.hasOwnProperty('msg_feedback')) {
        this.msg_feedback = initObj.msg_feedback
      }
      else {
        this.msg_feedback = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DriveReqResResponse
    // Serialize message field [msg_feedback]
    bufferOffset = _serializer.string(obj.msg_feedback, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DriveReqResResponse
    let len;
    let data = new DriveReqResResponse(null);
    // Deserialize message field [msg_feedback]
    data.msg_feedback = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.msg_feedback);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'service_pkg/DriveReqResResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2897a4bc4d7ca330e430870cfdee7314';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string msg_feedback
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DriveReqResResponse(null);
    if (msg.msg_feedback !== undefined) {
      resolved.msg_feedback = msg.msg_feedback;
    }
    else {
      resolved.msg_feedback = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: DriveReqResRequest,
  Response: DriveReqResResponse,
  md5sum() { return 'ab3dacaa1aef4690d4987eda2d4ff0e2'; },
  datatype() { return 'service_pkg/DriveReqRes'; }
};
