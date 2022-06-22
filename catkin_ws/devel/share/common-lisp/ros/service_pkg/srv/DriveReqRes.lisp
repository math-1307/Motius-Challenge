; Auto-generated. Do not edit!


(cl:in-package service_pkg-srv)


;//! \htmlinclude DriveReqRes-request.msg.html

(cl:defclass <DriveReqRes-request> (roslisp-msg-protocol:ros-message)
  ((lin_vel
    :reader lin_vel
    :initarg :lin_vel
    :type cl:float
    :initform 0.0)
   (ang_vel
    :reader ang_vel
    :initarg :ang_vel
    :type cl:float
    :initform 0.0))
)

(cl:defclass DriveReqRes-request (<DriveReqRes-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriveReqRes-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriveReqRes-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name service_pkg-srv:<DriveReqRes-request> is deprecated: use service_pkg-srv:DriveReqRes-request instead.")))

(cl:ensure-generic-function 'lin_vel-val :lambda-list '(m))
(cl:defmethod lin_vel-val ((m <DriveReqRes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_pkg-srv:lin_vel-val is deprecated.  Use service_pkg-srv:lin_vel instead.")
  (lin_vel m))

(cl:ensure-generic-function 'ang_vel-val :lambda-list '(m))
(cl:defmethod ang_vel-val ((m <DriveReqRes-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_pkg-srv:ang_vel-val is deprecated.  Use service_pkg-srv:ang_vel instead.")
  (ang_vel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriveReqRes-request>) ostream)
  "Serializes a message object of type '<DriveReqRes-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'lin_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ang_vel))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriveReqRes-request>) istream)
  "Deserializes a message object of type '<DriveReqRes-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lin_vel) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ang_vel) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriveReqRes-request>)))
  "Returns string type for a service object of type '<DriveReqRes-request>"
  "service_pkg/DriveReqResRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveReqRes-request)))
  "Returns string type for a service object of type 'DriveReqRes-request"
  "service_pkg/DriveReqResRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriveReqRes-request>)))
  "Returns md5sum for a message object of type '<DriveReqRes-request>"
  "ab3dacaa1aef4690d4987eda2d4ff0e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriveReqRes-request)))
  "Returns md5sum for a message object of type 'DriveReqRes-request"
  "ab3dacaa1aef4690d4987eda2d4ff0e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriveReqRes-request>)))
  "Returns full string definition for message of type '<DriveReqRes-request>"
  (cl:format cl:nil "float64 lin_vel~%float64 ang_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriveReqRes-request)))
  "Returns full string definition for message of type 'DriveReqRes-request"
  (cl:format cl:nil "float64 lin_vel~%float64 ang_vel~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriveReqRes-request>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriveReqRes-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DriveReqRes-request
    (cl:cons ':lin_vel (lin_vel msg))
    (cl:cons ':ang_vel (ang_vel msg))
))
;//! \htmlinclude DriveReqRes-response.msg.html

(cl:defclass <DriveReqRes-response> (roslisp-msg-protocol:ros-message)
  ((msg_feedback
    :reader msg_feedback
    :initarg :msg_feedback
    :type cl:string
    :initform ""))
)

(cl:defclass DriveReqRes-response (<DriveReqRes-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriveReqRes-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriveReqRes-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name service_pkg-srv:<DriveReqRes-response> is deprecated: use service_pkg-srv:DriveReqRes-response instead.")))

(cl:ensure-generic-function 'msg_feedback-val :lambda-list '(m))
(cl:defmethod msg_feedback-val ((m <DriveReqRes-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader service_pkg-srv:msg_feedback-val is deprecated.  Use service_pkg-srv:msg_feedback instead.")
  (msg_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriveReqRes-response>) ostream)
  "Serializes a message object of type '<DriveReqRes-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'msg_feedback))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'msg_feedback))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriveReqRes-response>) istream)
  "Deserializes a message object of type '<DriveReqRes-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'msg_feedback) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'msg_feedback) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriveReqRes-response>)))
  "Returns string type for a service object of type '<DriveReqRes-response>"
  "service_pkg/DriveReqResResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveReqRes-response)))
  "Returns string type for a service object of type 'DriveReqRes-response"
  "service_pkg/DriveReqResResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriveReqRes-response>)))
  "Returns md5sum for a message object of type '<DriveReqRes-response>"
  "ab3dacaa1aef4690d4987eda2d4ff0e2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriveReqRes-response)))
  "Returns md5sum for a message object of type 'DriveReqRes-response"
  "ab3dacaa1aef4690d4987eda2d4ff0e2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriveReqRes-response>)))
  "Returns full string definition for message of type '<DriveReqRes-response>"
  (cl:format cl:nil "string msg_feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriveReqRes-response)))
  "Returns full string definition for message of type 'DriveReqRes-response"
  (cl:format cl:nil "string msg_feedback~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriveReqRes-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'msg_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriveReqRes-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DriveReqRes-response
    (cl:cons ':msg_feedback (msg_feedback msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DriveReqRes)))
  'DriveReqRes-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DriveReqRes)))
  'DriveReqRes-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveReqRes)))
  "Returns string type for a service object of type '<DriveReqRes>"
  "service_pkg/DriveReqRes")