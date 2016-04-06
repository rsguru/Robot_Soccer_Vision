;; Auto-generated. Do not edit!


(when (boundp 'robot_soccer::convertedCoordinates)
  (if (not (find-package "ROBOT_SOCCER"))
    (make-package "ROBOT_SOCCER"))
  (shadow 'convertedCoordinates (find-package "ROBOT_SOCCER")))
(unless (find-package "ROBOT_SOCCER::CONVERTEDCOORDINATES")
  (make-package "ROBOT_SOCCER::CONVERTEDCOORDINATES"))

(in-package "ROS")
;;//! \htmlinclude convertedCoordinates.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robot_soccer::convertedCoordinates
  :super ros::object
  :slots (_header _home1_x _home1_y _home1_theta _home2_x _home2_y _home2_theta _away1_x _away1_y _away1_theta _away2_x _away2_y _away2_theta _ball_x _ball_y _field_width _field_height ))

(defmethod robot_soccer::convertedCoordinates
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:home1_x __home1_x) 0.0)
    ((:home1_y __home1_y) 0.0)
    ((:home1_theta __home1_theta) 0.0)
    ((:home2_x __home2_x) 0.0)
    ((:home2_y __home2_y) 0.0)
    ((:home2_theta __home2_theta) 0.0)
    ((:away1_x __away1_x) 0.0)
    ((:away1_y __away1_y) 0.0)
    ((:away1_theta __away1_theta) 0.0)
    ((:away2_x __away2_x) 0.0)
    ((:away2_y __away2_y) 0.0)
    ((:away2_theta __away2_theta) 0.0)
    ((:ball_x __ball_x) 0.0)
    ((:ball_y __ball_y) 0.0)
    ((:field_width __field_width) 0.0)
    ((:field_height __field_height) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _home1_x (float __home1_x))
   (setq _home1_y (float __home1_y))
   (setq _home1_theta (float __home1_theta))
   (setq _home2_x (float __home2_x))
   (setq _home2_y (float __home2_y))
   (setq _home2_theta (float __home2_theta))
   (setq _away1_x (float __away1_x))
   (setq _away1_y (float __away1_y))
   (setq _away1_theta (float __away1_theta))
   (setq _away2_x (float __away2_x))
   (setq _away2_y (float __away2_y))
   (setq _away2_theta (float __away2_theta))
   (setq _ball_x (float __ball_x))
   (setq _ball_y (float __ball_y))
   (setq _field_width (float __field_width))
   (setq _field_height (float __field_height))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:home1_x
   (&optional __home1_x)
   (if __home1_x (setq _home1_x __home1_x)) _home1_x)
  (:home1_y
   (&optional __home1_y)
   (if __home1_y (setq _home1_y __home1_y)) _home1_y)
  (:home1_theta
   (&optional __home1_theta)
   (if __home1_theta (setq _home1_theta __home1_theta)) _home1_theta)
  (:home2_x
   (&optional __home2_x)
   (if __home2_x (setq _home2_x __home2_x)) _home2_x)
  (:home2_y
   (&optional __home2_y)
   (if __home2_y (setq _home2_y __home2_y)) _home2_y)
  (:home2_theta
   (&optional __home2_theta)
   (if __home2_theta (setq _home2_theta __home2_theta)) _home2_theta)
  (:away1_x
   (&optional __away1_x)
   (if __away1_x (setq _away1_x __away1_x)) _away1_x)
  (:away1_y
   (&optional __away1_y)
   (if __away1_y (setq _away1_y __away1_y)) _away1_y)
  (:away1_theta
   (&optional __away1_theta)
   (if __away1_theta (setq _away1_theta __away1_theta)) _away1_theta)
  (:away2_x
   (&optional __away2_x)
   (if __away2_x (setq _away2_x __away2_x)) _away2_x)
  (:away2_y
   (&optional __away2_y)
   (if __away2_y (setq _away2_y __away2_y)) _away2_y)
  (:away2_theta
   (&optional __away2_theta)
   (if __away2_theta (setq _away2_theta __away2_theta)) _away2_theta)
  (:ball_x
   (&optional __ball_x)
   (if __ball_x (setq _ball_x __ball_x)) _ball_x)
  (:ball_y
   (&optional __ball_y)
   (if __ball_y (setq _ball_y __ball_y)) _ball_y)
  (:field_width
   (&optional __field_width)
   (if __field_width (setq _field_width __field_width)) _field_width)
  (:field_height
   (&optional __field_height)
   (if __field_height (setq _field_height __field_height)) _field_height)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _home1_x
    8
    ;; float64 _home1_y
    8
    ;; float64 _home1_theta
    8
    ;; float64 _home2_x
    8
    ;; float64 _home2_y
    8
    ;; float64 _home2_theta
    8
    ;; float64 _away1_x
    8
    ;; float64 _away1_y
    8
    ;; float64 _away1_theta
    8
    ;; float64 _away2_x
    8
    ;; float64 _away2_y
    8
    ;; float64 _away2_theta
    8
    ;; float64 _ball_x
    8
    ;; float64 _ball_y
    8
    ;; float64 _field_width
    8
    ;; float64 _field_height
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _home1_x
       (sys::poke _home1_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _home1_y
       (sys::poke _home1_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _home1_theta
       (sys::poke _home1_theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _home2_x
       (sys::poke _home2_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _home2_y
       (sys::poke _home2_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _home2_theta
       (sys::poke _home2_theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _away1_x
       (sys::poke _away1_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _away1_y
       (sys::poke _away1_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _away1_theta
       (sys::poke _away1_theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _away2_x
       (sys::poke _away2_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _away2_y
       (sys::poke _away2_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _away2_theta
       (sys::poke _away2_theta (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ball_x
       (sys::poke _ball_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ball_y
       (sys::poke _ball_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _field_width
       (sys::poke _field_width (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _field_height
       (sys::poke _field_height (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _home1_x
     (setq _home1_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _home1_y
     (setq _home1_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _home1_theta
     (setq _home1_theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _home2_x
     (setq _home2_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _home2_y
     (setq _home2_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _home2_theta
     (setq _home2_theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _away1_x
     (setq _away1_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _away1_y
     (setq _away1_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _away1_theta
     (setq _away1_theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _away2_x
     (setq _away2_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _away2_y
     (setq _away2_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _away2_theta
     (setq _away2_theta (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ball_x
     (setq _ball_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ball_y
     (setq _ball_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _field_width
     (setq _field_width (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _field_height
     (setq _field_height (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get robot_soccer::convertedCoordinates :md5sum-) "238c2852b3b57068402a18a71ad7a031")
(setf (get robot_soccer::convertedCoordinates :datatype-) "robot_soccer/convertedCoordinates")
(setf (get robot_soccer::convertedCoordinates :definition-)
      "Header header
float64 home1_x
float64 home1_y
float64 home1_theta
float64 home2_x
float64 home2_y
float64 home2_theta
float64 away1_x
float64 away1_y
float64 away1_theta
float64 away2_x
float64 away2_y
float64 away2_theta
float64 ball_x
float64 ball_y
float64 field_width
float64 field_height

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :robot_soccer/convertedCoordinates "238c2852b3b57068402a18a71ad7a031")


