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
      this.nomeUtente = null;
      this.destinatario = null;
      this.x = null;
      this.y = null;
    }
    else {
      if (initObj.hasOwnProperty('clientReq')) {
        this.clientReq = initObj.clientReq
      }
      else {
        this.clientReq = 0;
      }
      if (initObj.hasOwnProperty('nomeUtente')) {
        this.nomeUtente = initObj.nomeUtente
      }
      else {
        this.nomeUtente = '';
      }
      if (initObj.hasOwnProperty('destinatario')) {
        this.destinatario = initObj.destinatario
      }
      else {
        this.destinatario = '';
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServerMenuRequest
    // Serialize message field [clientReq]
    bufferOffset = _serializer.int32(obj.clientReq, buffer, bufferOffset);
    // Serialize message field [nomeUtente]
    bufferOffset = _serializer.string(obj.nomeUtente, buffer, bufferOffset);
    // Serialize message field [destinatario]
    bufferOffset = _serializer.string(obj.destinatario, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float64(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float64(obj.y, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServerMenuRequest
    let len;
    let data = new ServerMenuRequest(null);
    // Deserialize message field [clientReq]
    data.clientReq = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [nomeUtente]
    data.nomeUtente = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [destinatario]
    data.destinatario = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.nomeUtente.length;
    length += object.destinatario.length;
    return length + 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pad_msgs/ServerMenuRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ce379ccd6e519c2634707048f9c62d9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 clientReq
    string nomeUtente
    string destinatario
    float64 x
    float64 y
    
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

    if (msg.nomeUtente !== undefined) {
      resolved.nomeUtente = msg.nomeUtente;
    }
    else {
      resolved.nomeUtente = ''
    }

    if (msg.destinatario !== undefined) {
      resolved.destinatario = msg.destinatario;
    }
    else {
      resolved.destinatario = ''
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    return resolved;
    }
};

class ServerMenuResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.serverRes = null;
      this.warning = null;
    }
    else {
      if (initObj.hasOwnProperty('serverRes')) {
        this.serverRes = initObj.serverRes
      }
      else {
        this.serverRes = '';
      }
      if (initObj.hasOwnProperty('warning')) {
        this.warning = initObj.warning
      }
      else {
        this.warning = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ServerMenuResponse
    // Serialize message field [serverRes]
    bufferOffset = _serializer.string(obj.serverRes, buffer, bufferOffset);
    // Serialize message field [warning]
    bufferOffset = _serializer.int32(obj.warning, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ServerMenuResponse
    let len;
    let data = new ServerMenuResponse(null);
    // Deserialize message field [serverRes]
    data.serverRes = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [warning]
    data.warning = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.serverRes.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pad_msgs/ServerMenuResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ff7d364c458f89755b0b214d0566cc8a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string serverRes
    int32 warning 
    
    
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

    if (msg.warning !== undefined) {
      resolved.warning = msg.warning;
    }
    else {
      resolved.warning = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: ServerMenuRequest,
  Response: ServerMenuResponse,
  md5sum() { return 'da9a91b90d13b3c11f89db69f013608a'; },
  datatype() { return 'pad_msgs/ServerMenu'; }
};
