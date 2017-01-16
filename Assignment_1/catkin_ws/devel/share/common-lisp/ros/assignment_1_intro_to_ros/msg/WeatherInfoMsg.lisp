; Auto-generated. Do not edit!


(cl:in-package assignment_1_intro_to_ros-msg)


;//! \htmlinclude WeatherInfoMsg.msg.html

(cl:defclass <WeatherInfoMsg> (roslisp-msg-protocol:ros-message)
  ((weatherInfo
    :reader weatherInfo
    :initarg :weatherInfo
    :type cl:string
    :initform ""))
)

(cl:defclass WeatherInfoMsg (<WeatherInfoMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WeatherInfoMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WeatherInfoMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_1_intro_to_ros-msg:<WeatherInfoMsg> is deprecated: use assignment_1_intro_to_ros-msg:WeatherInfoMsg instead.")))

(cl:ensure-generic-function 'weatherInfo-val :lambda-list '(m))
(cl:defmethod weatherInfo-val ((m <WeatherInfoMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_1_intro_to_ros-msg:weatherInfo-val is deprecated.  Use assignment_1_intro_to_ros-msg:weatherInfo instead.")
  (weatherInfo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WeatherInfoMsg>) ostream)
  "Serializes a message object of type '<WeatherInfoMsg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'weatherInfo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'weatherInfo))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WeatherInfoMsg>) istream)
  "Deserializes a message object of type '<WeatherInfoMsg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'weatherInfo) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'weatherInfo) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WeatherInfoMsg>)))
  "Returns string type for a message object of type '<WeatherInfoMsg>"
  "assignment_1_intro_to_ros/WeatherInfoMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WeatherInfoMsg)))
  "Returns string type for a message object of type 'WeatherInfoMsg"
  "assignment_1_intro_to_ros/WeatherInfoMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WeatherInfoMsg>)))
  "Returns md5sum for a message object of type '<WeatherInfoMsg>"
  "b44a0f5eda9baea763d151cf60f7d90f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WeatherInfoMsg)))
  "Returns md5sum for a message object of type 'WeatherInfoMsg"
  "b44a0f5eda9baea763d151cf60f7d90f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WeatherInfoMsg>)))
  "Returns full string definition for message of type '<WeatherInfoMsg>"
  (cl:format cl:nil "string weatherInfo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WeatherInfoMsg)))
  "Returns full string definition for message of type 'WeatherInfoMsg"
  (cl:format cl:nil "string weatherInfo~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WeatherInfoMsg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'weatherInfo))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WeatherInfoMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'WeatherInfoMsg
    (cl:cons ':weatherInfo (weatherInfo msg))
))
