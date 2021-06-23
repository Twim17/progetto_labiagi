; Auto-generated. Do not edit!


(cl:in-package pad_msgs-srv)


;//! \htmlinclude ServerMenu-request.msg.html

(cl:defclass <ServerMenu-request> (roslisp-msg-protocol:ros-message)
  ((clientReq
    :reader clientReq
    :initarg :clientReq
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ServerMenu-request (<ServerMenu-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServerMenu-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServerMenu-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pad_msgs-srv:<ServerMenu-request> is deprecated: use pad_msgs-srv:ServerMenu-request instead.")))

(cl:ensure-generic-function 'clientReq-val :lambda-list '(m))
(cl:defmethod clientReq-val ((m <ServerMenu-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pad_msgs-srv:clientReq-val is deprecated.  Use pad_msgs-srv:clientReq instead.")
  (clientReq m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServerMenu-request>) ostream)
  "Serializes a message object of type '<ServerMenu-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clientReq)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServerMenu-request>) istream)
  "Deserializes a message object of type '<ServerMenu-request>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clientReq)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServerMenu-request>)))
  "Returns string type for a service object of type '<ServerMenu-request>"
  "pad_msgs/ServerMenuRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServerMenu-request)))
  "Returns string type for a service object of type 'ServerMenu-request"
  "pad_msgs/ServerMenuRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServerMenu-request>)))
  "Returns md5sum for a message object of type '<ServerMenu-request>"
  "32596eb33160ebf8976ecc13590aa29c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServerMenu-request)))
  "Returns md5sum for a message object of type 'ServerMenu-request"
  "32596eb33160ebf8976ecc13590aa29c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServerMenu-request>)))
  "Returns full string definition for message of type '<ServerMenu-request>"
  (cl:format cl:nil "uint8 clientReq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServerMenu-request)))
  "Returns full string definition for message of type 'ServerMenu-request"
  (cl:format cl:nil "uint8 clientReq~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServerMenu-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServerMenu-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServerMenu-request
    (cl:cons ':clientReq (clientReq msg))
))
;//! \htmlinclude ServerMenu-response.msg.html

(cl:defclass <ServerMenu-response> (roslisp-msg-protocol:ros-message)
  ((serverRes
    :reader serverRes
    :initarg :serverRes
    :type cl:string
    :initform ""))
)

(cl:defclass ServerMenu-response (<ServerMenu-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServerMenu-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServerMenu-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pad_msgs-srv:<ServerMenu-response> is deprecated: use pad_msgs-srv:ServerMenu-response instead.")))

(cl:ensure-generic-function 'serverRes-val :lambda-list '(m))
(cl:defmethod serverRes-val ((m <ServerMenu-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pad_msgs-srv:serverRes-val is deprecated.  Use pad_msgs-srv:serverRes instead.")
  (serverRes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServerMenu-response>) ostream)
  "Serializes a message object of type '<ServerMenu-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'serverRes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'serverRes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServerMenu-response>) istream)
  "Deserializes a message object of type '<ServerMenu-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'serverRes) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'serverRes) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServerMenu-response>)))
  "Returns string type for a service object of type '<ServerMenu-response>"
  "pad_msgs/ServerMenuResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServerMenu-response)))
  "Returns string type for a service object of type 'ServerMenu-response"
  "pad_msgs/ServerMenuResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServerMenu-response>)))
  "Returns md5sum for a message object of type '<ServerMenu-response>"
  "32596eb33160ebf8976ecc13590aa29c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServerMenu-response)))
  "Returns md5sum for a message object of type 'ServerMenu-response"
  "32596eb33160ebf8976ecc13590aa29c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServerMenu-response>)))
  "Returns full string definition for message of type '<ServerMenu-response>"
  (cl:format cl:nil "string serverRes ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServerMenu-response)))
  "Returns full string definition for message of type 'ServerMenu-response"
  (cl:format cl:nil "string serverRes ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServerMenu-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'serverRes))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServerMenu-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServerMenu-response
    (cl:cons ':serverRes (serverRes msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServerMenu)))
  'ServerMenu-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServerMenu)))
  'ServerMenu-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServerMenu)))
  "Returns string type for a service object of type '<ServerMenu>"
  "pad_msgs/ServerMenu")