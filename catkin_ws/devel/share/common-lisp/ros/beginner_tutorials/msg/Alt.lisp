; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude Alt.msg.html

(cl:defclass <Alt> (roslisp-msg-protocol:ros-message)
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
   (alt
    :reader alt
    :initarg :alt
    :type cl:float
    :initform 0.0))
)

(cl:defclass Alt (<Alt>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Alt>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Alt)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<Alt> is deprecated: use beginner_tutorials-msg:Alt instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Alt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:name-val is deprecated.  Use beginner_tutorials-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'deviceID-val :lambda-list '(m))
(cl:defmethod deviceID-val ((m <Alt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:deviceID-val is deprecated.  Use beginner_tutorials-msg:deviceID instead.")
  (deviceID m))

(cl:ensure-generic-function 'alt-val :lambda-list '(m))
(cl:defmethod alt-val ((m <Alt>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:alt-val is deprecated.  Use beginner_tutorials-msg:alt instead.")
  (alt m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Alt>) ostream)
  "Serializes a message object of type '<Alt>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'alt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Alt>) istream)
  "Deserializes a message object of type '<Alt>"
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
    (cl:setf (cl:slot-value msg 'alt) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Alt>)))
  "Returns string type for a message object of type '<Alt>"
  "beginner_tutorials/Alt")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Alt)))
  "Returns string type for a message object of type 'Alt"
  "beginner_tutorials/Alt")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Alt>)))
  "Returns md5sum for a message object of type '<Alt>"
  "52be1a4c5564c1815f865d5839c779ee")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Alt)))
  "Returns md5sum for a message object of type 'Alt"
  "52be1a4c5564c1815f865d5839c779ee")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Alt>)))
  "Returns full string definition for message of type '<Alt>"
  (cl:format cl:nil "string name~%int32 deviceID~%float32 alt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Alt)))
  "Returns full string definition for message of type 'Alt"
  (cl:format cl:nil "string name~%int32 deviceID~%float32 alt~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Alt>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Alt>))
  "Converts a ROS message object to a list"
  (cl:list 'Alt
    (cl:cons ':name (name msg))
    (cl:cons ':deviceID (deviceID msg))
    (cl:cons ':alt (alt msg))
))
