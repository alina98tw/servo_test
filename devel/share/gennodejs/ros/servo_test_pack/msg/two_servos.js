// Auto-generated. Do not edit!

// (in-package servo_test_pack.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class two_servos {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.servo_1 = null;
      this.servo_2 = null;
    }
    else {
      if (initObj.hasOwnProperty('servo_1')) {
        this.servo_1 = initObj.servo_1
      }
      else {
        this.servo_1 = 0.0;
      }
      if (initObj.hasOwnProperty('servo_2')) {
        this.servo_2 = initObj.servo_2
      }
      else {
        this.servo_2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type two_servos
    // Serialize message field [servo_1]
    bufferOffset = _serializer.float32(obj.servo_1, buffer, bufferOffset);
    // Serialize message field [servo_2]
    bufferOffset = _serializer.float32(obj.servo_2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type two_servos
    let len;
    let data = new two_servos(null);
    // Deserialize message field [servo_1]
    data.servo_1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [servo_2]
    data.servo_2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'servo_test_pack/two_servos';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9443fb1347cc03bf18054733acf7564a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 servo_1
    float32 servo_2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new two_servos(null);
    if (msg.servo_1 !== undefined) {
      resolved.servo_1 = msg.servo_1;
    }
    else {
      resolved.servo_1 = 0.0
    }

    if (msg.servo_2 !== undefined) {
      resolved.servo_2 = msg.servo_2;
    }
    else {
      resolved.servo_2 = 0.0
    }

    return resolved;
    }
};

module.exports = two_servos;
