; Auto-generated. Do not edit!


(cl:in-package pad_msgs-srv)


;//! \htmlinclude ServerMenu-request.msg.html

(cl:defclass <ServerMenu-request> (roslisp-msg-protocol:ros-message)
  ((clientReq
    :reader clientReq
    :initarg :clientReq
    :type cl:integer
    :initform 0)
   (nomeUtente
    :reader nomeUtente
    :initarg :nomeUtente
    :type cl:string
    :initform "")
   (destinatario
    :reader destinatario
    :initarg :destinatario
    :type cl:string
    :initform "")
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0))
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

(cl:ensure-generic-function 'nomeUtente-val :lambda-list '(m))
(cl:defmethod nomeUtente-val ((m <ServerMenu-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pad_msgs-srv:nomeUtente-val is deprecated.  Use pad_msgs-srv:nomeUtente instead.")
  (nomeUtente m))

(cl:ensure-generic-function 'destinatario-val :lambda-list '(m))
(cl:defmethod destinatario-val ((m <ServerMenu-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pad_msgs-srv:destinatario-val is deprecated.  Use pad_msgs-srv:destinatario instead.")
  (destinatario m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <ServerMenu-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pad_msgs-srv:x-val is deprecated.  Use pad_msgs-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <ServerMenu-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pad_msgs-srv:y-val is deprecated.  Use pad_msgs-srv:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServerMenu-request>) ostream)
  "Serializes a message object of type '<ServerMenu-request>"
  (cl:let* ((signed (cl:slot-value msg 'clientReq)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'nomeUtente))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'nomeUtente))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'destinatario))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'destinatario))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServerMenu-request>) istream)
  "Deserializes a message object of type '<ServerMenu-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'clientReq) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'nomeUtente) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'nomeUtente) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'destinatario) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'destinatario) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-double-float-bits bits)))
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
  "da9a91b90d13b3c11f89db69f013608a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServerMenu-request)))
  "Returns md5sum for a message object of type 'ServerMenu-request"
  "da9a91b90d13b3c11f89db69f013608a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServerMenu-request>)))
  "Returns full string definition for message of type '<ServerMenu-request>"
  (cl:format cl:nil "int32 clientReq~%string nomeUtente~%string destinatario~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServerMenu-request)))
  "Returns full string definition for message of type 'ServerMenu-request"
  (cl:format cl:nil "int32 clientReq~%string nomeUtente~%string destinatario~%float64 x~%float64 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServerMenu-request>))
  (cl:+ 0
     4
     4 (cl:length (cl:slot-value msg 'nomeUtente))
     4 (cl:length (cl:slot-value msg 'destinatario))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServerMenu-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ServerMenu-request
    (cl:cons ':clientReq (clientReq msg))
    (cl:cons ':nomeUtente (nomeUtente msg))
    (cl:cons ':destinatario (destinatario msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
;//! \htmlinclude ServerMenu-response.msg.html

(cl:defclass <ServerMenu-response> (roslisp-msg-protocol:ros-message)
  ((serverRes
    :reader serverRes
    :initarg :serverRes
    :type cl:string
    :initform "")
   (warning
    :reader warning
    :initarg :warning
    :type cl:integer
    :initform 0))
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

(cl:ensure-generic-function 'warning-val :lambda-list '(m))
(cl:defmethod warning-val ((m <ServerMenu-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pad_msgs-srv:warning-val is deprecated.  Use pad_msgs-srv:warning instead.")
  (warning m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServerMenu-response>) ostream)
  "Serializes a message object of type '<ServerMenu-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'serverRes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'serverRes))
  (cl:let* ((signed (cl:slot-value msg 'warning)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'warning) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
  "da9a91b90d13b3c11f89db69f013608a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServerMenu-response)))
  "Returns md5sum for a message object of type 'ServerMenu-response"
  "da9a91b90d13b3c11f89db69f013608a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServerMenu-response>)))
  "Returns full string definition for message of type '<ServerMenu-response>"
  (cl:format cl:nil "string serverRes~%int32 warning ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServerMenu-response)))
  "Returns full string definition for message of type 'ServerMenu-response"
  (cl:format cl:nil "string serverRes~%int32 warning ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServerMenu-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'serverRes))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServerMenu-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ServerMenu-response
    (cl:cons ':serverRes (serverRes msg))
    (cl:cons ':warning (warning msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ServerMenu)))
  'ServerMenu-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ServerMenu)))
  'ServerMenu-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServerMenu)))
  "Returns string type for a service object of type '<ServerMenu>"
  "pad_msgs/ServerMenu")