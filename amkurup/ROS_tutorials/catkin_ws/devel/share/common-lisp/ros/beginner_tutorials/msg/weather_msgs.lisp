; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude weather_msgs.msg.html

(cl:defclass <weather_msgs> (roslisp-msg-protocol:ros-message)
  ((zip
    :reader zip
    :initarg :zip
    :type cl:integer
    :initform 0)
   (location
    :reader location
    :initarg :location
    :type cl:string
    :initform "")
   (temperature
    :reader temperature
    :initarg :temperature
    :type cl:float
    :initform 0.0))
)

(cl:defclass weather_msgs (<weather_msgs>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <weather_msgs>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'weather_msgs)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<weather_msgs> is deprecated: use beginner_tutorials-msg:weather_msgs instead.")))

(cl:ensure-generic-function 'zip-val :lambda-list '(m))
(cl:defmethod zip-val ((m <weather_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:zip-val is deprecated.  Use beginner_tutorials-msg:zip instead.")
  (zip m))

(cl:ensure-generic-function 'location-val :lambda-list '(m))
(cl:defmethod location-val ((m <weather_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:location-val is deprecated.  Use beginner_tutorials-msg:location instead.")
  (location m))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <weather_msgs>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:temperature-val is deprecated.  Use beginner_tutorials-msg:temperature instead.")
  (temperature m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <weather_msgs>) ostream)
  "Serializes a message object of type '<weather_msgs>"
  (cl:let* ((signed (cl:slot-value msg 'zip)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'location))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'location))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temperature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <weather_msgs>) istream)
  "Deserializes a message object of type '<weather_msgs>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'zip) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'location) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'location) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temperature) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<weather_msgs>)))
  "Returns string type for a message object of type '<weather_msgs>"
  "beginner_tutorials/weather_msgs")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'weather_msgs)))
  "Returns string type for a message object of type 'weather_msgs"
  "beginner_tutorials/weather_msgs")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<weather_msgs>)))
  "Returns md5sum for a message object of type '<weather_msgs>"
  "61580aab72e2795d86388fba43a63ac3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'weather_msgs)))
  "Returns md5sum for a message object of type 'weather_msgs"
  "61580aab72e2795d86388fba43a63ac3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<weather_msgs>)))
  "Returns full string definition for message of type '<weather_msgs>"
  (cl:format cl:nil "int64 zip~%string location~%float32 temperature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'weather_msgs)))
  "Returns full string definition for message of type 'weather_msgs"
  (cl:format cl:nil "int64 zip~%string location~%float32 temperature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <weather_msgs>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'location))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <weather_msgs>))
  "Converts a ROS message object to a list"
  (cl:list 'weather_msgs
    (cl:cons ':zip (zip msg))
    (cl:cons ':location (location msg))
    (cl:cons ':temperature (temperature msg))
))
