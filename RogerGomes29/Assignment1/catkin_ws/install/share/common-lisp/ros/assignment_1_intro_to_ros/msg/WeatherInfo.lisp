; Auto-generated. Do not edit!


(cl:in-package assignment_1_intro_to_ros-msg)


;//! \htmlinclude WeatherInfo.msg.html

(cl:defclass <WeatherInfo> (roslisp-msg-protocol:ros-message)
  ((temperature
    :reader temperature
    :initarg :temperature
    :type cl:integer
    :initform 0)
   (reaction
    :reader reaction
    :initarg :reaction
    :type cl:string
    :initform ""))
)

(cl:defclass WeatherInfo (<WeatherInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WeatherInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WeatherInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_1_intro_to_ros-msg:<WeatherInfo> is deprecated: use assignment_1_intro_to_ros-msg:WeatherInfo instead.")))

(cl:ensure-generic-function 'temperature-val :lambda-list '(m))
(cl:defmethod temperature-val ((m <WeatherInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_1_intro_to_ros-msg:temperature-val is deprecated.  Use assignment_1_intro_to_ros-msg:temperature instead.")
  (temperature m))

(cl:ensure-generic-function 'reaction-val :lambda-list '(m))
(cl:defmethod reaction-val ((m <WeatherInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_1_intro_to_ros-msg:reaction-val is deprecated.  Use assignment_1_intro_to_ros-msg:reaction instead.")
  (reaction m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WeatherInfo>) ostream)
  "Serializes a message object of type '<WeatherInfo>"
  (cl:let* ((signed (cl:slot-value msg 'temperature)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'reaction))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'reaction))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WeatherInfo>) istream)
  "Deserializes a message object of type '<WeatherInfo>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'temperature) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reaction) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'reaction) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WeatherInfo>)))
  "Returns string type for a message object of type '<WeatherInfo>"
  "assignment_1_intro_to_ros/WeatherInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WeatherInfo)))
  "Returns string type for a message object of type 'WeatherInfo"
  "assignment_1_intro_to_ros/WeatherInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WeatherInfo>)))
  "Returns md5sum for a message object of type '<WeatherInfo>"
  "8229d44e93d381e63bfb1f0d4aa31049")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WeatherInfo)))
  "Returns md5sum for a message object of type 'WeatherInfo"
  "8229d44e93d381e63bfb1f0d4aa31049")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WeatherInfo>)))
  "Returns full string definition for message of type '<WeatherInfo>"
  (cl:format cl:nil "int64 temperature~%string reaction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WeatherInfo)))
  "Returns full string definition for message of type 'WeatherInfo"
  (cl:format cl:nil "int64 temperature~%string reaction~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WeatherInfo>))
  (cl:+ 0
     8
     4 (cl:length (cl:slot-value msg 'reaction))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WeatherInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'WeatherInfo
    (cl:cons ':temperature (temperature msg))
    (cl:cons ':reaction (reaction msg))
))
