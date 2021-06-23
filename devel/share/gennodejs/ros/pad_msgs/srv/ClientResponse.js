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

class ClientResponseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClientResponseRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClientResponseRequest
    let len;
    let data = new ClientResponseRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pad_msgs/ClientResponseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClientResponseRequest(null);
    return resolved;
    }
};

class ClientResponseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.clientResponse = null;
    }
    else {
      if (initObj.hasOwnProperty('clientResponse')) {
        this.clientResponse = initObj.clientResponse
      }
      else {
        this.clientResponse = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ClientResponseResponse
    // Serialize message field [clientResponse]
    bufferOffset = _serializer.uint8(obj.clientResponse, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ClientResponseResponse
    let len;
    let data = new ClientResponseResponse(null);
    // Deserialize message field [clientResponse]
    data.clientResponse = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pad_msgs/ClientResponseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb3d6a26c15df5cc0e2a4cf9e7a416cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 clientResponse # Indice dell'opzione scelta
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ClientResponseResponse(null);
    if (msg.clientResponse !== undefined) {
      resolved.clientResponse = msg.clientResponse;
    }
    else {
      resolved.clientResponse = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: ClientResponseRequest,
  Response: ClientResponseResponse,
  md5sum() { return 'cb3d6a26c15df5cc0e2a4cf9e7a416cb'; },
  datatype() { return 'pad_msgs/ClientResponse'; }
};
