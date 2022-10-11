; Auto-generated. Do not edit!


(cl:in-package beginner_tutorials-msg)


;//! \htmlinclude PmodNav.msg.html

(cl:defclass <PmodNav> (roslisp-msg-protocol:ros-message)
  ((name_accel_gyro
    :reader name_accel_gyro
    :initarg :name_accel_gyro
    :type cl:string
    :initform "")
   (deviceID_accel_gyro
    :reader deviceID_accel_gyro
    :initarg :deviceID_accel_gyro
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
    :initform 0.0)
   (gyro_x
    :reader gyro_x
    :initarg :gyro_x
    :type cl:float
    :initform 0.0)
   (gyro_y
    :reader gyro_y
    :initarg :gyro_y
    :type cl:float
    :initform 0.0)
   (gyro_z
    :reader gyro_z
    :initarg :gyro_z
    :type cl:float
    :initform 0.0)
   (name_mag
    :reader name_mag
    :initarg :name_mag
    :type cl:string
    :initform "")
   (deviceID_mag
    :reader deviceID_mag
    :initarg :deviceID_mag
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
    :initform 0.0)
   (name_alt_temp
    :reader name_alt_temp
    :initarg :name_alt_temp
    :type cl:string
    :initform "")
   (deviceID_alt_temp
    :reader deviceID_alt_temp
    :initarg :deviceID_alt_temp
    :type cl:integer
    :initform 0)
   (alt
    :reader alt
    :initarg :alt
    :type cl:float
    :initform 0.0)
   (temp
    :reader temp
    :initarg :temp
    :type cl:float
    :initform 0.0))
)

(cl:defclass PmodNav (<PmodNav>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PmodNav>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PmodNav)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name beginner_tutorials-msg:<PmodNav> is deprecated: use beginner_tutorials-msg:PmodNav instead.")))

(cl:ensure-generic-function 'name_accel_gyro-val :lambda-list '(m))
(cl:defmethod name_accel_gyro-val ((m <PmodNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:name_accel_gyro-val is deprecated.  Use beginner_tutorials-msg:name_accel_gyro instead.")
  (name_accel_gyro m))

(cl:ensure-generic-function 'deviceID_accel_gyro-val :lambda-list '(m))
(cl:defmethod deviceID_accel_gyro-val ((m <PmodNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:deviceID_accel_gyro-val is deprecated.  Use beginner_tutorials-msg:deviceID_accel_gyro instead.")
  (deviceID_accel_gyro m))

(cl:ensure-generic-function 'accel_x-val :lambda-list '(m))
(cl:defmethod accel_x-val ((m <PmodNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:accel_x-val is deprecated.  Use beginner_tutorials-msg:accel_x instead.")
  (accel_x m))

(cl:ensure-generic-function 'accel_y-val :lambda-list '(m))
(cl:defmethod accel_y-val ((m <PmodNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:accel_y-val is deprecated.  Use beginner_tutorials-msg:accel_y instead.")
  (accel_y m))

(cl:ensure-generic-function 'accel_z-val :lambda-list '(m))
(cl:defmethod accel_z-val ((m <PmodNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:accel_z-val is deprecated.  Use beginner_tutorials-msg:accel_z instead.")
  (accel_z m))

(cl:ensure-generic-function 'gyro_x-val :lambda-list '(m))
(cl:defmethod gyro_x-val ((m <PmodNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:gyro_x-val is deprecated.  Use beginner_tutorials-msg:gyro_x instead.")
  (gyro_x m))

(cl:ensure-generic-function 'gyro_y-val :lambda-list '(m))
(cl:defmethod gyro_y-val ((m <PmodNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:gyro_y-val is deprecated.  Use beginner_tutorials-msg:gyro_y instead.")
  (gyro_y m))

(cl:ensure-generic-function 'gyro_z-val :lambda-list '(m))
(cl:defmethod gyro_z-val ((m <PmodNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:gyro_z-val is deprecated.  Use beginner_tutorials-msg:gyro_z instead.")
  (gyro_z m))

(cl:ensure-generic-function 'name_mag-val :lambda-list '(m))
(cl:defmethod name_mag-val ((m <PmodNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:name_mag-val is deprecated.  Use beginner_tutorials-msg:name_mag instead.")
  (name_mag m))

(cl:ensure-generic-function 'deviceID_mag-val :lambda-list '(m))
(cl:defmethod deviceID_mag-val ((m <PmodNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:deviceID_mag-val is deprecated.  Use beginner_tutorials-msg:deviceID_mag instead.")
  (deviceID_mag m))

(cl:ensure-generic-function 'mag_x-val :lambda-list '(m))
(cl:defmethod mag_x-val ((m <PmodNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:mag_x-val is deprecated.  Use beginner_tutorials-msg:mag_x instead.")
  (mag_x m))

(cl:ensure-generic-function 'mag_y-val :lambda-list '(m))
(cl:defmethod mag_y-val ((m <PmodNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:mag_y-val is deprecated.  Use beginner_tutorials-msg:mag_y instead.")
  (mag_y m))

(cl:ensure-generic-function 'mag_z-val :lambda-list '(m))
(cl:defmethod mag_z-val ((m <PmodNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:mag_z-val is deprecated.  Use beginner_tutorials-msg:mag_z instead.")
  (mag_z m))

(cl:ensure-generic-function 'name_alt_temp-val :lambda-list '(m))
(cl:defmethod name_alt_temp-val ((m <PmodNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:name_alt_temp-val is deprecated.  Use beginner_tutorials-msg:name_alt_temp instead.")
  (name_alt_temp m))

(cl:ensure-generic-function 'deviceID_alt_temp-val :lambda-list '(m))
(cl:defmethod deviceID_alt_temp-val ((m <PmodNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:deviceID_alt_temp-val is deprecated.  Use beginner_tutorials-msg:deviceID_alt_temp instead.")
  (deviceID_alt_temp m))

(cl:ensure-generic-function 'alt-val :lambda-list '(m))
(cl:defmethod alt-val ((m <PmodNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:alt-val is deprecated.  Use beginner_tutorials-msg:alt instead.")
  (alt m))

(cl:ensure-generic-function 'temp-val :lambda-list '(m))
(cl:defmethod temp-val ((m <PmodNav>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader beginner_tutorials-msg:temp-val is deprecated.  Use beginner_tutorials-msg:temp instead.")
  (temp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PmodNav>) ostream)
  "Serializes a message object of type '<PmodNav>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name_accel_gyro))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name_accel_gyro))
  (cl:let* ((signed (cl:slot-value msg 'deviceID_accel_gyro)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyro_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyro_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'gyro_z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name_mag))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name_mag))
  (cl:let* ((signed (cl:slot-value msg 'deviceID_mag)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name_alt_temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name_alt_temp))
  (cl:let* ((signed (cl:slot-value msg 'deviceID_alt_temp)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'temp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PmodNav>) istream)
  "Deserializes a message object of type '<PmodNav>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name_accel_gyro) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name_accel_gyro) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'deviceID_accel_gyro) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyro_x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyro_y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gyro_z) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name_mag) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name_mag) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'deviceID_mag) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name_alt_temp) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name_alt_temp) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'deviceID_alt_temp) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'alt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'temp) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PmodNav>)))
  "Returns string type for a message object of type '<PmodNav>"
  "beginner_tutorials/PmodNav")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PmodNav)))
  "Returns string type for a message object of type 'PmodNav"
  "beginner_tutorials/PmodNav")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PmodNav>)))
  "Returns md5sum for a message object of type '<PmodNav>"
  "0b0aaed9046365d75b6b5593dfab947b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PmodNav)))
  "Returns md5sum for a message object of type 'PmodNav"
  "0b0aaed9046365d75b6b5593dfab947b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PmodNav>)))
  "Returns full string definition for message of type '<PmodNav>"
  (cl:format cl:nil "string name_accel_gyro~%int32 deviceID_accel_gyro~%float32 accel_x~%float32 accel_y~%float32 accel_z~%float32 gyro_x~%float32 gyro_y~%float32 gyro_z~%string name_mag~%int32 deviceID_mag~%float32 mag_x~%float32 mag_y~%float32 mag_z~%string name_alt_temp~%int32 deviceID_alt_temp~%float32 alt~%float32 temp~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PmodNav)))
  "Returns full string definition for message of type 'PmodNav"
  (cl:format cl:nil "string name_accel_gyro~%int32 deviceID_accel_gyro~%float32 accel_x~%float32 accel_y~%float32 accel_z~%float32 gyro_x~%float32 gyro_y~%float32 gyro_z~%string name_mag~%int32 deviceID_mag~%float32 mag_x~%float32 mag_y~%float32 mag_z~%string name_alt_temp~%int32 deviceID_alt_temp~%float32 alt~%float32 temp~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PmodNav>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name_accel_gyro))
     4
     4
     4
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'name_mag))
     4
     4
     4
     4
     4 (cl:length (cl:slot-value msg 'name_alt_temp))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PmodNav>))
  "Converts a ROS message object to a list"
  (cl:list 'PmodNav
    (cl:cons ':name_accel_gyro (name_accel_gyro msg))
    (cl:cons ':deviceID_accel_gyro (deviceID_accel_gyro msg))
    (cl:cons ':accel_x (accel_x msg))
    (cl:cons ':accel_y (accel_y msg))
    (cl:cons ':accel_z (accel_z msg))
    (cl:cons ':gyro_x (gyro_x msg))
    (cl:cons ':gyro_y (gyro_y msg))
    (cl:cons ':gyro_z (gyro_z msg))
    (cl:cons ':name_mag (name_mag msg))
    (cl:cons ':deviceID_mag (deviceID_mag msg))
    (cl:cons ':mag_x (mag_x msg))
    (cl:cons ':mag_y (mag_y msg))
    (cl:cons ':mag_z (mag_z msg))
    (cl:cons ':name_alt_temp (name_alt_temp msg))
    (cl:cons ':deviceID_alt_temp (deviceID_alt_temp msg))
    (cl:cons ':alt (alt msg))
    (cl:cons ':temp (temp msg))
))
