;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Mag)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Mag (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::MAG")
  (make-package "BEGINNER_TUTORIALS::MAG"))

(in-package "ROS")
;;//! \htmlinclude Mag.msg.html


(defclass beginner_tutorials::Mag
  :super ros::object
  :slots (_name _deviceID _mag_x _mag_y _mag_z ))

(defmethod beginner_tutorials::Mag
  (:init
   (&key
    ((:name __name) "")
    ((:deviceID __deviceID) 0)
    ((:mag_x __mag_x) 0.0)
    ((:mag_y __mag_y) 0.0)
    ((:mag_z __mag_z) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _deviceID (round __deviceID))
   (setq _mag_x (float __mag_x))
   (setq _mag_y (float __mag_y))
   (setq _mag_z (float __mag_z))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:deviceID
   (&optional __deviceID)
   (if __deviceID (setq _deviceID __deviceID)) _deviceID)
  (:mag_x
   (&optional __mag_x)
   (if __mag_x (setq _mag_x __mag_x)) _mag_x)
  (:mag_y
   (&optional __mag_y)
   (if __mag_y (setq _mag_y __mag_y)) _mag_y)
  (:mag_z
   (&optional __mag_z)
   (if __mag_z (setq _mag_z __mag_z)) _mag_z)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _deviceID
    4
    ;; float32 _mag_x
    4
    ;; float32 _mag_y
    4
    ;; float32 _mag_z
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
     ;; float32 _mag_x
       (sys::poke _mag_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mag_y
       (sys::poke _mag_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mag_z
       (sys::poke _mag_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _deviceID
     (setq _deviceID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _mag_x
     (setq _mag_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mag_y
     (setq _mag_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mag_z
     (setq _mag_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get beginner_tutorials::Mag :md5sum-) "ba5a5347ac523925835e1f68e04750c5")
(setf (get beginner_tutorials::Mag :datatype-) "beginner_tutorials/Mag")
(setf (get beginner_tutorials::Mag :definition-)
      "string name
int32 deviceID
float32 mag_x
float32 mag_y
float32 mag_z

")



(provide :beginner_tutorials/Mag "ba5a5347ac523925835e1f68e04750c5")


