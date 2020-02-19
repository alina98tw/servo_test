; Auto-generated. Do not edit!


(cl:in-package servo_test_pack-msg)


;//! \htmlinclude two_servos.msg.html

(cl:defclass <two_servos> (roslisp-msg-protocol:ros-message)
  ((servo_1
    :reader servo_1
    :initarg :servo_1
    :type cl:float
    :initform 0.0)
   (servo_2
    :reader servo_2
    :initarg :servo_2
    :type cl:float
    :initform 0.0))
)

(cl:defclass two_servos (<two_servos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <two_servos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'two_servos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servo_test_pack-msg:<two_servos> is deprecated: use servo_test_pack-msg:two_servos instead.")))

(cl:ensure-generic-function 'servo_1-val :lambda-list '(m))
(cl:defmethod servo_1-val ((m <two_servos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_test_pack-msg:servo_1-val is deprecated.  Use servo_test_pack-msg:servo_1 instead.")
  (servo_1 m))

(cl:ensure-generic-function 'servo_2-val :lambda-list '(m))
(cl:defmethod servo_2-val ((m <two_servos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servo_test_pack-msg:servo_2-val is deprecated.  Use servo_test_pack-msg:servo_2 instead.")
  (servo_2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <two_servos>) ostream)
  "Serializes a message object of type '<two_servos>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'servo_1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'servo_2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <two_servos>) istream)
  "Deserializes a message object of type '<two_servos>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'servo_1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'servo_2) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<two_servos>)))
  "Returns string type for a message object of type '<two_servos>"
  "servo_test_pack/two_servos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'two_servos)))
  "Returns string type for a message object of type 'two_servos"
  "servo_test_pack/two_servos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<two_servos>)))
  "Returns md5sum for a message object of type '<two_servos>"
  "9443fb1347cc03bf18054733acf7564a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'two_servos)))
  "Returns md5sum for a message object of type 'two_servos"
  "9443fb1347cc03bf18054733acf7564a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<two_servos>)))
  "Returns full string definition for message of type '<two_servos>"
  (cl:format cl:nil "float32 servo_1~%float32 servo_2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'two_servos)))
  "Returns full string definition for message of type 'two_servos"
  (cl:format cl:nil "float32 servo_1~%float32 servo_2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <two_servos>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <two_servos>))
  "Converts a ROS message object to a list"
  (cl:list 'two_servos
    (cl:cons ':servo_1 (servo_1 msg))
    (cl:cons ':servo_2 (servo_2 msg))
))
