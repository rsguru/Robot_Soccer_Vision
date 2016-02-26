;; Auto-generated. Do not edit!


(when (boundp 'robot_soccer::locations)
  (if (not (find-package "ROBOT_SOCCER"))
    (make-package "ROBOT_SOCCER"))
  (shadow 'locations (find-package "ROBOT_SOCCER")))
(unless (find-package "ROBOT_SOCCER::LOCATIONS")
  (make-package "ROBOT_SOCCER::LOCATIONS"))

(in-package "ROS")
;;//! \htmlinclude locations.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass robot_soccer::locations
  :super ros::object
  :slots (_header _home1_x _home1_y _home1_theta _ball_x _ball_y ))

(defmethod robot_soccer::locations
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:home1_x __home1_x) 0)
    ((:home1_y __home1_y) 0)
    ((:home1_theta __home1_theta) 0)
    ((:ball_x __ball_x) 0)
    ((:ball_y __ball_y) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _home1_x (round __home1_x))
   (setq _home1_y (round __home1_y))
   (setq _home1_theta (round __home1_theta))
   (setq _ball_x (round __ball_x))
   (setq _ball_y (round __ball_y))
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
  (:ball_x
   (&optional __ball_x)
   (if __ball_x (setq _ball_x __ball_x)) _ball_x)
  (:ball_y
   (&optional __ball_y)
   (if __ball_y (setq _ball_y __ball_y)) _ball_y)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _home1_x
    4
    ;; int32 _home1_y
    4
    ;; int32 _home1_theta
    4
    ;; int32 _ball_x
    4
    ;; int32 _ball_y
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _home1_x
       (write-long _home1_x s)
     ;; int32 _home1_y
       (write-long _home1_y s)
     ;; int32 _home1_theta
       (write-long _home1_theta s)
     ;; int32 _ball_x
       (write-long _ball_x s)
     ;; int32 _ball_y
       (write-long _ball_y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _home1_x
     (setq _home1_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _home1_y
     (setq _home1_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _home1_theta
     (setq _home1_theta (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ball_x
     (setq _ball_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _ball_y
     (setq _ball_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get robot_soccer::locations :md5sum-) "a28bb17570907c28d276ade19cd9ea89")
(setf (get robot_soccer::locations :datatype-) "robot_soccer/locations")
(setf (get robot_soccer::locations :definition-)
      "Header header
int32 home1_x
int32 home1_y
int32 home1_theta
int32 ball_x
int32 ball_y

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



(provide :robot_soccer/locations "a28bb17570907c28d276ade19cd9ea89")


