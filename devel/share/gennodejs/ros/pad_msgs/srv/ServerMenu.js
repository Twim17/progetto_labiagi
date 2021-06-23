// Auto-generated. Do not edit!

// (in-package pad_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ServerMenuRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.clientReq = null;
    }
    else {
      if (initObj.hasOwnProperty('clientReq')) {
        this.clientReq = initObj.clientReq
      }
      else {
        this.clientReq = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServerMenuRequest
    // Serialize message field [clientReq]
    bufferOffset = _serializer.uint8(obj.clientReq, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServerMenuRequest
    let len;
    let data = new ServerMenuRequest(null);
    // Deserialize message field [clientReq]
    data.clientReq = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pad_msgs/ServerMenuRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b8251afa4652503387afda47e4bbcf26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 clientReq
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServerMenuRequest(null);
    if (msg.clientReq !== undefined) {
      resolved.clientReq = msg.clientReq;
    }
    else {
      resolved.clientReq = 0
    }

    return resolved;
    }
};

class ServerMenuResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.serverRes = null;
    }
    else {
      if (initObj.hasOwnProperty('serverRes')) {
        this.serverRes = initObj.serverRes
      }
      else {
        this.serverRes = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServerMenuResponse
    // Serialize message field [serverRes]
    bufferOffset = _serializer.string(obj.serverRes, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServerMenuResponse
    let len;
    let data = new ServerMenuResponse(null);
    // Deserialize message field [serverRes]
    data.serverRes = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.serverRes.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pad_msgs/ServerMenuResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '15656c4fab87b46fc1b92114ecf33198';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string serverRes 
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ServerMenuResponse(null);
    if (msg.serverRes !== undefined) {
      resolved.serverRes = msg.serverRes;
    }
    else {
      resolved.serverRes = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ServerMenuRequest,
  Response: ServerMenuResponse,
  md5sum() { return '32596eb33160ebf8976ecc13590aa29c'; },
  datatype() { return 'pad_msgs/ServerMenu'; }
};
