;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Gyro)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Gyro (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::GYRO")
  (make-package "BEGINNER_TUTORIALS::GYRO"))

(in-package "ROS")
;;//! \htmlinclude Gyro.msg.html


(defclass beginner_tutorials::Gyro
  :super ros::object
  :slots (_name _deviceID _gyro_x _gyro_y _gyro_z ))

(defmethod beginner_tutorials::Gyro
  (:init
   (&key
    ((:name __name) "")
    ((:deviceID __deviceID) 0)
    ((:gyro_x __gyro_x) 0.0)
    ((:gyro_y __gyro_y) 0.0)
    ((:gyro_z __gyro_z) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _deviceID (round __deviceID))
   (setq _gyro_x (float __gyro_x))
   (setq _gyro_y (float __gyro_y))
   (setq _gyro_z (float __gyro_z))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:deviceID
   (&optional __deviceID)
   (if __deviceID (setq _deviceID __deviceID)) _deviceID)
  (:gyro_x
   (&optional __gyro_x)
   (if __gyro_x (setq _gyro_x __gyro_x)) _gyro_x)
  (:gyro_y
   (&optional __gyro_y)
   (if __gyro_y (setq _gyro_y __gyro_y)) _gyro_y)
  (:gyro_z
   (&optional __gyro_z)
   (if __gyro_z (setq _gyro_z __gyro_z)) _gyro_z)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _deviceID
    4
    ;; float32 _gyro_x
    4
    ;; float32 _gyro_y
    4
    ;; float32 _gyro_z
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32 _deviceID
       (write-long _deviceID s)
     ;; float32 _gyro_x
       (sys::poke _gyro_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_y
       (sys::poke _gyro_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_z
       (sys::poke _gyro_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _deviceID
     (setq _deviceID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _gyro_x
     (setq _gyro_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_y
     (setq _gyro_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_z
     (setq _gyro_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get beginner_tutorials::Gyro :md5sum-) "7dc4253aea9867744d89668dafe87380")
(setf (get beginner_tutorials::Gyro :datatype-) "beginner_tutorials/Gyro")
(setf (get beginner_tutorials::Gyro :definition-)
      "string name
int32 deviceID
float32 gyro_x
float32 gyro_y
float32 gyro_z

")



(provide :beginner_tutorials/Gyro "7dc4253aea9867744d89668dafe87380")


