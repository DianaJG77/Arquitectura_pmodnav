;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::Alt)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'Alt (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::ALT")
  (make-package "BEGINNER_TUTORIALS::ALT"))

(in-package "ROS")
;;//! \htmlinclude Alt.msg.html


(defclass beginner_tutorials::Alt
  :super ros::object
  :slots (_name _deviceID _alt ))

(defmethod beginner_tutorials::Alt
  (:init
   (&key
    ((:name __name) "")
    ((:deviceID __deviceID) 0)
    ((:alt __alt) 0.0)
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _deviceID (round __deviceID))
   (setq _alt (float __alt))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:deviceID
   (&optional __deviceID)
   (if __deviceID (setq _deviceID __deviceID)) _deviceID)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32 _deviceID
    4
    ;; float32 _alt
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
     ;; float32 _alt
       (sys::poke _alt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _deviceID
     (setq _deviceID (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _alt
     (setq _alt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get beginner_tutorials::Alt :md5sum-) "52be1a4c5564c1815f865d5839c779ee")
(setf (get beginner_tutorials::Alt :datatype-) "beginner_tutorials/Alt")
(setf (get beginner_tutorials::Alt :definition-)
      "string name
int32 deviceID
float32 alt

")



(provide :beginner_tutorials/Alt "52be1a4c5564c1815f865d5839c779ee")


