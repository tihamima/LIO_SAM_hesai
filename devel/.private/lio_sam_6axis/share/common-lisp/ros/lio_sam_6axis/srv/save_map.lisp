; Auto-generated. Do not edit!


(cl:in-package lio_sam_6axis-srv)


;//! \htmlinclude save_map-request.msg.html

(cl:defclass <save_map-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass save_map-request (<save_map-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <save_map-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'save_map-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lio_sam_6axis-srv:<save_map-request> is deprecated: use lio_sam_6axis-srv:save_map-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <save_map-request>) ostream)
  "Serializes a message object of type '<save_map-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <save_map-request>) istream)
  "Deserializes a message object of type '<save_map-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<save_map-request>)))
  "Returns string type for a service object of type '<save_map-request>"
  "lio_sam_6axis/save_mapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_map-request)))
  "Returns string type for a service object of type 'save_map-request"
  "lio_sam_6axis/save_mapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<save_map-request>)))
  "Returns md5sum for a message object of type '<save_map-request>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'save_map-request)))
  "Returns md5sum for a message object of type 'save_map-request"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<save_map-request>)))
  "Returns full string definition for message of type '<save_map-request>"
  (cl:format cl:nil "#string destination~%#float32 resolution~%#string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'save_map-request)))
  "Returns full string definition for message of type 'save_map-request"
  (cl:format cl:nil "#string destination~%#float32 resolution~%#string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <save_map-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <save_map-request>))
  "Converts a ROS message object to a list"
  (cl:list 'save_map-request
))
;//! \htmlinclude save_map-response.msg.html

(cl:defclass <save_map-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass save_map-response (<save_map-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <save_map-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'save_map-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lio_sam_6axis-srv:<save_map-response> is deprecated: use lio_sam_6axis-srv:save_map-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <save_map-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lio_sam_6axis-srv:success-val is deprecated.  Use lio_sam_6axis-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <save_map-response>) ostream)
  "Serializes a message object of type '<save_map-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <save_map-response>) istream)
  "Deserializes a message object of type '<save_map-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<save_map-response>)))
  "Returns string type for a service object of type '<save_map-response>"
  "lio_sam_6axis/save_mapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_map-response)))
  "Returns string type for a service object of type 'save_map-response"
  "lio_sam_6axis/save_mapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<save_map-response>)))
  "Returns md5sum for a message object of type '<save_map-response>"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'save_map-response)))
  "Returns md5sum for a message object of type 'save_map-response"
  "358e233cde0c8a8bcfea4ce193f8fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<save_map-response>)))
  "Returns full string definition for message of type '<save_map-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'save_map-response)))
  "Returns full string definition for message of type 'save_map-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <save_map-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <save_map-response>))
  "Converts a ROS message object to a list"
  (cl:list 'save_map-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'save_map)))
  'save_map-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'save_map)))
  'save_map-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'save_map)))
  "Returns string type for a service object of type '<save_map>"
  "lio_sam_6axis/save_map")