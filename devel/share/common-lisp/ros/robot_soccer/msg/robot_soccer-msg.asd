
(cl:in-package :asdf)

(defsystem "robot_soccer-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "locations" :depends-on ("_package_locations"))
    (:file "_package_locations" :depends-on ("_package"))
  ))