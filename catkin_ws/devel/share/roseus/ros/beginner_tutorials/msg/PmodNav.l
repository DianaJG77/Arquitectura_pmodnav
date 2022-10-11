;; Auto-generated. Do not edit!


(when (boundp 'beginner_tutorials::PmodNav)
  (if (not (find-package "BEGINNER_TUTORIALS"))
    (make-package "BEGINNER_TUTORIALS"))
  (shadow 'PmodNav (find-package "BEGINNER_TUTORIALS")))
(unless (find-package "BEGINNER_TUTORIALS::PMODNAV")
  (make-package "BEGINNER_TUTORIALS::PMODNAV"))

(in-package "ROS")
;;//! \htmlinclude PmodNav.msg.html


(defclass beginner_tutorials::PmodNav
  :super ros::object
  :slots (_name_accel_gyro _deviceID_accel_gyro _accel_x _accel_y _accel_z _gyro_x _gyro_y _gyro_z _name_mag _deviceID_mag _mag_x _mag_y _mag_z _name_alt_temp _deviceID_alt_temp _alt _temp ))

(defmethod beginner_tutorials::PmodNav
  (:init
   (&key
    ((:name_accel_gyro __name_accel_gyro) "")
    ((:deviceID_accel_gyro __deviceID_accel_gyro) 0)
    ((:accel_x __accel_x) 0.0)
    ((:accel_y __accel_y) 0.0)
    ((:accel_z __accel_z) 0.0)
    ((:gyro_x __gyro_x) 0.0)
    ((:gyro_y __gyro_y) 0.0)
    ((:gyro_z __gyro_z) 0.0)
    ((:name_mag __name_mag) "")
    ((:deviceID_mag __deviceID_mag) 0)
    ((:mag_x __mag_x) 0.0)
    ((:mag_y __mag_y) 0.0)
    ((:mag_z __mag_z) 0.0)
    ((:name_alt_temp __name_alt_temp) "")
    ((:deviceID_alt_temp __deviceID_alt_temp) 0)
    ((:alt __alt) 0.0)
    ((:temp __temp) 0.0)
    )
   (send-super :init)
   (setq _name_accel_gyro (string __name_accel_gyro))
   (setq _deviceID_accel_gyro (round __deviceID_accel_gyro))
   (setq _accel_x (float __accel_x))
   (setq _accel_y (float __accel_y))
   (setq _accel_z (float __accel_z))
   (setq _gyro_x (float __gyro_x))
   (setq _gyro_y (float __gyro_y))
   (setq _gyro_z (float __gyro_z))
   (setq _name_mag (string __name_mag))
   (setq _deviceID_mag (round __deviceID_mag))
   (setq _mag_x (float __mag_x))
   (setq _mag_y (float __mag_y))
   (setq _mag_z (float __mag_z))
   (setq _name_alt_temp (string __name_alt_temp))
   (setq _deviceID_alt_temp (round __deviceID_alt_temp))
   (setq _alt (float __alt))
   (setq _temp (float __temp))
   self)
  (:name_accel_gyro
   (&optional __name_accel_gyro)
   (if __name_accel_gyro (setq _name_accel_gyro __name_accel_gyro)) _name_accel_gyro)
  (:deviceID_accel_gyro
   (&optional __deviceID_accel_gyro)
   (if __deviceID_accel_gyro (setq _deviceID_accel_gyro __deviceID_accel_gyro)) _deviceID_accel_gyro)
  (:accel_x
   (&optional __accel_x)
   (if __accel_x (setq _accel_x __accel_x)) _accel_x)
  (:accel_y
   (&optional __accel_y)
   (if __accel_y (setq _accel_y __accel_y)) _accel_y)
  (:accel_z
   (&optional __accel_z)
   (if __accel_z (setq _accel_z __accel_z)) _accel_z)
  (:gyro_x
   (&optional __gyro_x)
   (if __gyro_x (setq _gyro_x __gyro_x)) _gyro_x)
  (:gyro_y
   (&optional __gyro_y)
   (if __gyro_y (setq _gyro_y __gyro_y)) _gyro_y)
  (:gyro_z
   (&optional __gyro_z)
   (if __gyro_z (setq _gyro_z __gyro_z)) _gyro_z)
  (:name_mag
   (&optional __name_mag)
   (if __name_mag (setq _name_mag __name_mag)) _name_mag)
  (:deviceID_mag
   (&optional __deviceID_mag)
   (if __deviceID_mag (setq _deviceID_mag __deviceID_mag)) _deviceID_mag)
  (:mag_x
   (&optional __mag_x)
   (if __mag_x (setq _mag_x __mag_x)) _mag_x)
  (:mag_y
   (&optional __mag_y)
   (if __mag_y (setq _mag_y __mag_y)) _mag_y)
  (:mag_z
   (&optional __mag_z)
   (if __mag_z (setq _mag_z __mag_z)) _mag_z)
  (:name_alt_temp
   (&optional __name_alt_temp)
   (if __name_alt_temp (setq _name_alt_temp __name_alt_temp)) _name_alt_temp)
  (:deviceID_alt_temp
   (&optional __deviceID_alt_temp)
   (if __deviceID_alt_temp (setq _deviceID_alt_temp __deviceID_alt_temp)) _deviceID_alt_temp)
  (:alt
   (&optional __alt)
   (if __alt (setq _alt __alt)) _alt)
  (:temp
   (&optional __temp)
   (if __temp (setq _temp __temp)) _temp)
  (:serialization-length
   ()
   (+
    ;; string _name_accel_gyro
    4 (length _name_accel_gyro)
    ;; int32 _deviceID_accel_gyro
    4
    ;; float32 _accel_x
    4
    ;; float32 _accel_y
    4
    ;; float32 _accel_z
    4
    ;; float32 _gyro_x
    4
    ;; float32 _gyro_y
    4
    ;; float32 _gyro_z
    4
    ;; string _name_mag
    4 (length _name_mag)
    ;; int32 _deviceID_mag
    4
    ;; float32 _mag_x
    4
    ;; float32 _mag_y
    4
    ;; float32 _mag_z
    4
    ;; string _name_alt_temp
    4 (length _name_alt_temp)
    ;; int32 _deviceID_alt_temp
    4
    ;; float32 _alt
    4
    ;; float32 _temp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name_accel_gyro
       (write-long (length _name_accel_gyro) s) (princ _name_accel_gyro s)
     ;; int32 _deviceID_accel_gyro
       (write-long _deviceID_accel_gyro s)
     ;; float32 _accel_x
       (sys::poke _accel_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accel_y
       (sys::poke _accel_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _accel_z
       (sys::poke _accel_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_x
       (sys::poke _gyro_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_y
       (sys::poke _gyro_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _gyro_z
       (sys::poke _gyro_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _name_mag
       (write-long (length _name_mag) s) (princ _name_mag s)
     ;; int32 _deviceID_mag
       (write-long _deviceID_mag s)
     ;; float32 _mag_x
       (sys::poke _mag_x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mag_y
       (sys::poke _mag_y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mag_z
       (sys::poke _mag_z (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _name_alt_temp
       (write-long (length _name_alt_temp) s) (princ _name_alt_temp s)
     ;; int32 _deviceID_alt_temp
       (write-long _deviceID_alt_temp s)
     ;; float32 _alt
       (sys::poke _alt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _temp
       (sys::poke _temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name_accel_gyro
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name_accel_gyro (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _deviceID_accel_gyro
     (setq _deviceID_accel_gyro (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _accel_x
     (setq _accel_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accel_y
     (setq _accel_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _accel_z
     (setq _accel_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_x
     (setq _gyro_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_y
     (setq _gyro_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _gyro_z
     (setq _gyro_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _name_mag
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name_mag (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _deviceID_mag
     (setq _deviceID_mag (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _mag_x
     (setq _mag_x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mag_y
     (setq _mag_y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mag_z
     (setq _mag_z (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _name_alt_temp
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name_alt_temp (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _deviceID_alt_temp
     (setq _deviceID_alt_temp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _alt
     (setq _alt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _temp
     (setq _temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get beginner_tutorials::PmodNav :md5sum-) "0b0aaed9046365d75b6b5593dfab947b")
(setf (get beginner_tutorials::PmodNav :datatype-) "beginner_tutorials/PmodNav")
(setf (get beginner_tutorials::PmodNav :definition-)
      "string name_accel_gyro
int32 deviceID_accel_gyro
float32 accel_x
float32 accel_y
float32 accel_z
float32 gyro_x
float32 gyro_y
float32 gyro_z
string name_mag
int32 deviceID_mag
float32 mag_x
float32 mag_y
float32 mag_z
string name_alt_temp
int32 deviceID_alt_temp
float32 alt
float32 temp



")



(provide :beginner_tutorials/PmodNav "0b0aaed9046365d75b6b5593dfab947b")


