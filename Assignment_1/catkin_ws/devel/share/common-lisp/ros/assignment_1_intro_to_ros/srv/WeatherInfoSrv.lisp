; Auto-generated. Do not edit!


(cl:in-package assignment_1_intro_to_ros-srv)


;//! \htmlinclude WeatherInfoSrv-request.msg.html

(cl:defclass <WeatherInfoSrv-request> (roslisp-msg-protocol:ros-message)
  ((zipCode
    :reader zipCode
    :initarg :zipCode
    :type cl:integer
    :initform 0))
)

(cl:defclass WeatherInfoSrv-request (<WeatherInfoSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WeatherInfoSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WeatherInfoSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_1_intro_to_ros-srv:<WeatherInfoSrv-request> is deprecated: use assignment_1_intro_to_ros-srv:WeatherInfoSrv-request instead.")))

(cl:ensure-generic-function 'zipCode-val :lambda-list '(m))
(cl:defmethod zipCode-val ((m <WeatherInfoSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_1_intro_to_ros-srv:zipCode-val is deprecated.  Use assignment_1_intro_to_ros-srv:zipCode instead.")
  (zipCode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WeatherInfoSrv-request>) ostream)
  "Serializes a message object of type '<WeatherInfoSrv-request>"
  (cl:let* ((signed (cl:slot-value msg 'zipCode)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WeatherInfoSrv-request>) istream)
  "Deserializes a message object of type '<WeatherInfoSrv-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'zipCode) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WeatherInfoSrv-request>)))
  "Returns string type for a service object of type '<WeatherInfoSrv-request>"
  "assignment_1_intro_to_ros/WeatherInfoSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WeatherInfoSrv-request)))
  "Returns string type for a service object of type 'WeatherInfoSrv-request"
  "assignment_1_intro_to_ros/WeatherInfoSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WeatherInfoSrv-request>)))
  "Returns md5sum for a message object of type '<WeatherInfoSrv-request>"
  "41a2765bbfb2d838f288a4a9bc7620e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WeatherInfoSrv-request)))
  "Returns md5sum for a message object of type 'WeatherInfoSrv-request"
  "41a2765bbfb2d838f288a4a9bc7620e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WeatherInfoSrv-request>)))
  "Returns full string definition for message of type '<WeatherInfoSrv-request>"
  (cl:format cl:nil "int64 zipCode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WeatherInfoSrv-request)))
  "Returns full string definition for message of type 'WeatherInfoSrv-request"
  (cl:format cl:nil "int64 zipCode~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WeatherInfoSrv-request>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WeatherInfoSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'WeatherInfoSrv-request
    (cl:cons ':zipCode (zipCode msg))
))
;//! \htmlinclude WeatherInfoSrv-response.msg.html

(cl:defclass <WeatherInfoSrv-response> (roslisp-msg-protocol:ros-message)
  ((weatherInfo
    :reader weatherInfo
    :initarg :weatherInfo
    :type cl:string
    :initform ""))
)

(cl:defclass WeatherInfoSrv-response (<WeatherInfoSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WeatherInfoSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WeatherInfoSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name assignment_1_intro_to_ros-srv:<WeatherInfoSrv-response> is deprecated: use assignment_1_intro_to_ros-srv:WeatherInfoSrv-response instead.")))

(cl:ensure-generic-function 'weatherInfo-val :lambda-list '(m))
(cl:defmethod weatherInfo-val ((m <WeatherInfoSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader assignment_1_intro_to_ros-srv:weatherInfo-val is deprecated.  Use assignment_1_intro_to_ros-srv:weatherInfo instead.")
  (weatherInfo m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WeatherInfoSrv-response>) ostream)
  "Serializes a message object of type '<WeatherInfoSrv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'weatherInfo))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'weatherInfo))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WeatherInfoSrv-response>) istream)
  "Deserializes a message object of type '<WeatherInfoSrv-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WeatherInfoSrv-response>)))
  "Returns string type for a service object of type '<WeatherInfoSrv-response>"
  "assignment_1_intro_to_ros/WeatherInfoSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WeatherInfoSrv-response)))
  "Returns string type for a service object of type 'WeatherInfoSrv-response"
  "assignment_1_intro_to_ros/WeatherInfoSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WeatherInfoSrv-response>)))
  "Returns md5sum for a message object of type '<WeatherInfoSrv-response>"
  "41a2765bbfb2d838f288a4a9bc7620e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WeatherInfoSrv-response)))
  "Returns md5sum for a message object of type 'WeatherInfoSrv-response"
  "41a2765bbfb2d838f288a4a9bc7620e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WeatherInfoSrv-response>)))
  "Returns full string definition for message of type '<WeatherInfoSrv-response>"
  (cl:format cl:nil "string weatherInfo~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WeatherInfoSrv-response)))
  "Returns full string definition for message of type 'WeatherInfoSrv-response"
  (cl:format cl:nil "string weatherInfo~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WeatherInfoSrv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'weatherInfo))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WeatherInfoSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'WeatherInfoSrv-response
    (cl:cons ':weatherInfo (weatherInfo msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'WeatherInfoSrv)))
  'WeatherInfoSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'WeatherInfoSrv)))
  'WeatherInfoSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WeatherInfoSrv)))
  "Returns string type for a service object of type '<WeatherInfoSrv>"
  "assignment_1_intro_to_ros/WeatherInfoSrv")