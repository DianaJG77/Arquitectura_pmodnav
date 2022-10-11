; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude Mag.msg.html

(cl:defclass <Mag> (roslisp-msg-protocol:ros-message)
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
   (mag_x
    :reader mag_x
    :initarg :mag_x
    :type cl:float
    :initform 0.0)
   (mag_y
    :reader mag_y
    :initarg :mag_y
    :type cl:float
    :initform 0.0)
   (mag_z
    :reader mag_z
    :initarg :mag_z
    :type cl:float
    :initform 0.0))
)

(cl:defclass Mag (<Mag>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Mag>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Mag)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<Mag> is deprecated: use beginner_tutorials-msg:Mag instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Mag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:name-val is deprecated.  Use beginner_tutorials-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'deviceID-val :lambda-list '(m))
(cl:defmethod deviceID-val ((m <Mag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:deviceID-val is deprecated.  Use beginner_tutorials-msg:deviceID instead.")
  (deviceID m))

(cl:ensure-generic-function 'mag_x-val :lambda-list '(m))
(cl:defmethod mag_x-val ((m <Mag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:mag_x-val is deprecated.  Use beginner_tutorials-msg:mag_x instead.")
  (mag_x m))

(cl:ensure-generic-function 'mag_y-val :lambda-list '(m))
(cl:defmethod mag_y-val ((m <Mag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:mag_y-val is deprecated.  Use beginner_tutorials-msg:mag_y instead.")
  (mag_y m))

(cl:ensure-generic-function 'mag_z-val :lambda-list '(m))
(cl:defmethod mag_z-val ((m <Mag>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:mag_z-val is deprecated.  Use beginner_tutorials-msg:mag_z instead.")
  (mag_z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Mag>) ostream)
  "Serializes a message object of type '<Mag>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mag_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mag_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mag_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Mag>) istream)
  "Deserializes a message object of type '<Mag>"
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
    (cl:setf (cl:slot-value msg 'mag_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mag_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mag_z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Mag>)))
  "Returns string type for a message object of type '<Mag>"
  "beginner_tutorials/Mag")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Mag)))
  "Returns string type for a message object of type 'Mag"
  "beginner_tutorials/Mag")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Mag>)))
  "Returns md5sum for a message object of type '<Mag>"
  "ba5a5347ac523925835e1f68e04750c5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Mag)))
  "Returns md5sum for a message object of type 'Mag"
  "ba5a5347ac523925835e1f68e04750c5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Mag>)))
  "Returns full string definition for message of type '<Mag>"
  (cl:format cl:nil "string name~%int32 deviceID~%float32 mag_x~%float32 mag_y~%float32 mag_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Mag)))
  "Returns full string definition for message of type 'Mag"
  (cl:format cl:nil "string name~%int32 deviceID~%float32 mag_x~%float32 mag_y~%float32 mag_z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Mag>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Mag>))
  "Converts a ROS message object to a list"
  (cl:list 'Mag
    (cl:cons ':name (name msg))
    (cl:cons ':deviceID (deviceID msg))
    (cl:cons ':mag_x (mag_x msg))
    (cl:cons ':mag_y (mag_y msg))
    (cl:cons ':mag_z (mag_z msg))
))
