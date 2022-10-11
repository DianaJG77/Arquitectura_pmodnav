;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Temp)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Temp (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::TEMP")
  (make-package "BEGINNER_TUTORIALS::TEMP"))

(in-package "ROS")
;;//! \htmlinclude Temp.msg.html


(defclass beginner_tutorials::Temp
  :super ros::object
  :slots (_name _deviceID _temp ))

(defmethod beginner_tutorials::Temp
  (:init
   (&key
    ((:name __name) "")
    ((:deviceID __deviceID) 0)
    ((:temp __temp) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _deviceID (round __deviceID))
   (setq _temp (float __temp))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:deviceID
   (&optional __deviceID)
   (if __deviceID (setq _deviceID __deviceID)) _deviceID)
  (:temp
   (&optional __temp)
   (if __temp (setq _temp __temp)) _temp)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _deviceID
    4
    ;; float32 _temp
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
     ;; float32 _temp
       (sys::poke _temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _deviceID
     (setq _deviceID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _temp
     (setq _temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get beginner_tutorials::Temp :md5sum-) "0755a2ea399434f518ddd31b9aa172ec")
(setf (get beginner_tutorials::Temp :datatype-) "beginner_tutorials/Temp")
(setf (get beginner_tutorials::Temp :definition-)
      "string name
int32 deviceID
float32 temp

")



(provide :beginner_tutorials/Temp "0755a2ea399434f518ddd31b9aa172ec")


