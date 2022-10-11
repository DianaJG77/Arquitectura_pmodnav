; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude Accel.msg.html

(cl:defclass <Accel> (roslisp-msg-protocol:ros-message)
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
   (accel_x
    :reader accel_x
    :initarg :accel_x
    :type cl:float
    :initform 0.0)
   (accel_y
    :reader accel_y
    :initarg :accel_y
    :type cl:float
    :initform 0.0)
   (accel_z
    :reader accel_z
    :initarg :accel_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass Accel (<Accel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Accel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Accel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<Accel> is deprecated: use beginner_tutorials-msg:Accel instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Accel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:name-val is deprecated.  Use beginner_tutorials-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'deviceID-val :lambda-list '(m))
(cl:defmethod deviceID-val ((m <Accel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:deviceID-val is deprecated.  Use beginner_tutorials-msg:deviceID instead.")
  (deviceID m))

(cl:ensure-generic-function 'accel_x-val :lambda-list '(m))
(cl:defmethod accel_x-val ((m <Accel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:accel_x-val is deprecated.  Use beginner_tutorials-msg:accel_x instead.")
  (accel_x m))

(cl:ensure-generic-function 'accel_y-val :lambda-list '(m))
(cl:defmethod accel_y-val ((m <Accel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:accel_y-val is deprecated.  Use beginner_tutorials-msg:accel_y instead.")
  (accel_y m))

(cl:ensure-generic-function 'accel_z-val :lambda-list '(m))
(cl:defmethod accel_z-val ((m <Accel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:accel_z-val is deprecated.  Use beginner_tutorials-msg:accel_z instead.")
  (accel_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Accel>) ostream)
  "Serializes a message object of type '<Accel>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accel_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accel_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'accel_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Accel>) istream)
  "Deserializes a message object of type '<Accel>"
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
    (cl:setf (cl:slot-value msg 'accel_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accel_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'accel_z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Accel>)))
  "Returns string type for a message object of type '<Accel>"
  "beginner_tutorials/Accel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Accel)))
  "Returns string type for a message object of type 'Accel"
  "beginner_tutorials/Accel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Accel>)))
  "Returns md5sum for a message object of type '<Accel>"
  "1b08ed2f1c5084f033c7c9b5231e4229")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Accel)))
  "Returns md5sum for a message object of type 'Accel"
  "1b08ed2f1c5084f033c7c9b5231e4229")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Accel>)))
  "Returns full string definition for message of type '<Accel>"
  (cl:format cl:nil "string name~%int32 deviceID~%float32 accel_x~%float32 accel_y~%float32 accel_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Accel)))
  "Returns full string definition for message of type 'Accel"
  (cl:format cl:nil "string name~%int32 deviceID~%float32 accel_x~%float32 accel_y~%float32 accel_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Accel>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Accel>))
  "Converts a ROS message object to a list"
  (cl:list 'Accel
    (cl:cons ':name (name msg))
    (cl:cons ':deviceID (deviceID msg))
    (cl:cons ':accel_x (accel_x msg))
    (cl:cons ':accel_y (accel_y msg))
    (cl:cons ':accel_z (accel_z msg))
))
