;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Accel)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Accel (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::ACCEL")
  (make-package "BEGINNER_TUTORIALS::ACCEL"))

(in-package "ROS")
;;//! \htmlinclude Accel.msg.html


(defclass beginner_tutorials::Accel
  :super ros::object
  :slots (_name _deviceID _accel_x _accel_y _accel_z ))

(defmethod beginner_tutorials::Accel
  (:init
   (&key
    ((:name __name) "")
    ((:deviceID __deviceID) 0)
    ((:accel_x __accel_x) 0.0)
    ((:accel_y __accel_y) 0.0)
    ((:accel_z __accel_z) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _deviceID (round __deviceID))
   (setq _accel_x (float __accel_x))
   (setq _accel_y (float __accel_y))
   (setq _accel_z (float __accel_z))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:deviceID
   (&optional __deviceID)
   (if __deviceID (setq _deviceID __deviceID)) _deviceID)
  (:accel_x
   (&optional __accel_x)
   (if __accel_x (setq _accel_x __accel_x)) _accel_x)
  (:accel_y
   (&optional __accel_y)
   (if __accel_y (setq _accel_y __accel_y)) _accel_y)
  (:accel_z
   (&optional __accel_z)
   (if __accel_z (setq _accel_z __accel_z)) _accel_z)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _deviceID
    4
    ;; float32 _accel_x
    4
    ;; float32 _accel_y
    4
    ;; float32 _accel_z
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
     ;; float32 _accel_x
       (sys::poke _accel_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accel_y
       (sys::poke _accel_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accel_z
       (sys::poke _accel_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _deviceID
     (setq _deviceID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _accel_x
     (setq _accel_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accel_y
     (setq _accel_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accel_z
     (setq _accel_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get beginner_tutorials::Accel :md5sum-) "1b08ed2f1c5084f033c7c9b5231e4229")
(setf (get beginner_tutorials::Accel :datatype-) "beginner_tutorials/Accel")
(setf (get beginner_tutorials::Accel :definition-)
      "string name
int32 deviceID
float32 accel_x
float32 accel_y
float32 accel_z

")



(provide :beginner_tutorials/Accel "1b08ed2f1c5084f033c7c9b5231e4229")


