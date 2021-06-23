; Auto-generated. Do not edit!


(cl:in-package pad_msgs-srv)


;//! \htmlinclude ClientResponse-request.msg.html

(cl:defclass <ClientResponse-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ClientResponse-request (<ClientResponse-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClientResponse-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClientResponse-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pad_msgs-srv:<ClientResponse-request> is deprecated: use pad_msgs-srv:ClientResponse-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClientResponse-request>) ostream)
  "Serializes a message object of type '<ClientResponse-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClientResponse-request>) istream)
  "Deserializes a message object of type '<ClientResponse-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClientResponse-request>)))
  "Returns string type for a service object of type '<ClientResponse-request>"
  "pad_msgs/ClientResponseRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClientResponse-request)))
  "Returns string type for a service object of type 'ClientResponse-request"
  "pad_msgs/ClientResponseRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClientResponse-request>)))
  "Returns md5sum for a message object of type '<ClientResponse-request>"
  "cb3d6a26c15df5cc0e2a4cf9e7a416cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClientResponse-request)))
  "Returns md5sum for a message object of type 'ClientResponse-request"
  "cb3d6a26c15df5cc0e2a4cf9e7a416cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClientResponse-request>)))
  "Returns full string definition for message of type '<ClientResponse-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClientResponse-request)))
  "Returns full string definition for message of type 'ClientResponse-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClientResponse-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClientResponse-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ClientResponse-request
))
;//! \htmlinclude ClientResponse-response.msg.html

(cl:defclass <ClientResponse-response> (roslisp-msg-protocol:ros-message)
  ((clientResponse
    :reader clientResponse
    :initarg :clientResponse
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ClientResponse-response (<ClientResponse-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClientResponse-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClientResponse-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pad_msgs-srv:<ClientResponse-response> is deprecated: use pad_msgs-srv:ClientResponse-response instead.")))

(cl:ensure-generic-function 'clientResponse-val :lambda-list '(m))
(cl:defmethod clientResponse-val ((m <ClientResponse-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pad_msgs-srv:clientResponse-val is deprecated.  Use pad_msgs-srv:clientResponse instead.")
  (clientResponse m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClientResponse-response>) ostream)
  "Serializes a message object of type '<ClientResponse-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clientResponse)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClientResponse-response>) istream)
  "Deserializes a message object of type '<ClientResponse-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'clientResponse)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClientResponse-response>)))
  "Returns string type for a service object of type '<ClientResponse-response>"
  "pad_msgs/ClientResponseResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClientResponse-response)))
  "Returns string type for a service object of type 'ClientResponse-response"
  "pad_msgs/ClientResponseResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClientResponse-response>)))
  "Returns md5sum for a message object of type '<ClientResponse-response>"
  "cb3d6a26c15df5cc0e2a4cf9e7a416cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClientResponse-response)))
  "Returns md5sum for a message object of type 'ClientResponse-response"
  "cb3d6a26c15df5cc0e2a4cf9e7a416cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClientResponse-response>)))
  "Returns full string definition for message of type '<ClientResponse-response>"
  (cl:format cl:nil "uint8 clientResponse # Indice dell'opzione scelta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClientResponse-response)))
  "Returns full string definition for message of type 'ClientResponse-response"
  (cl:format cl:nil "uint8 clientResponse # Indice dell'opzione scelta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClientResponse-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClientResponse-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ClientResponse-response
    (cl:cons ':clientResponse (clientResponse msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ClientResponse)))
  'ClientResponse-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ClientResponse)))
  'ClientResponse-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClientResponse)))
  "Returns string type for a service object of type '<ClientResponse>"
  "pad_msgs/ClientResponse")