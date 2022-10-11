; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude Temp.msg.html

(cl:defclass <Temp> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (deviceID
    :reader deviceID
    :initarg :deviceID
    :type cl:integer
    :initform 0)
   (temp
    :reader temp
    :initarg :temp
    :type cl:float
    :initform 0.0))
)

(cl:defclass Temp (<Temp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Temp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Temp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<Temp> is deprecated: use beginner_tutorials-msg:Temp instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Temp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:name-val is deprecated.  Use beginner_tutorials-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'deviceID-val :lambda-list '(m))
(cl:defmethod deviceID-val ((m <Temp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:deviceID-val is deprecated.  Use beginner_tutorials-msg:deviceID instead.")
  (deviceID m))

(cl:ensure-generic-function 'temp-val :lambda-list '(m))
(cl:defmethod temp-val ((m <Temp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:temp-val is deprecated.  Use beginner_tutorials-msg:temp instead.")
  (temp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Temp>) ostream)
  "Serializes a message object of type '<Temp>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let* ((signed (cl:slot-value msg 'deviceID)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Temp>) istream)
  "Deserializes a message object of type '<Temp>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'deviceID) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temp) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Temp>)))
  "Returns string type for a message object of type '<Temp>"
  "beginner_tutorials/Temp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Temp)))
  "Returns string type for a message object of type 'Temp"
  "beginner_tutorials/Temp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Temp>)))
  "Returns md5sum for a message object of type '<Temp>"
  "0755a2ea399434f518ddd31b9aa172ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Temp)))
  "Returns md5sum for a message object of type 'Temp"
  "0755a2ea399434f518ddd31b9aa172ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Temp>)))
  "Returns full string definition for message of type '<Temp>"
  (cl:format cl:nil "string name~%int32 deviceID~%float32 temp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Temp)))
  "Returns full string definition for message of type 'Temp"
  (cl:format cl:nil "string name~%int32 deviceID~%float32 temp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Temp>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Temp>))
  "Converts a ROS message object to a list"
  (cl:list 'Temp
    (cl:cons ':name (name msg))
    (cl:cons ':deviceID (deviceID msg))
    (cl:cons ':temp (temp msg))
))
