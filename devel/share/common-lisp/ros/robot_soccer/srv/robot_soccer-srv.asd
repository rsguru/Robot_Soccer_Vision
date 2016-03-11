
(cl:in-package :asdf)

(defsystem "robot_soccer-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "commcenter" :depends-on ("_package_commcenter"))
    (:file "_package_commcenter" :depends-on ("_package"))
    (:file "curlocs" :depends-on ("_package_curlocs"))
    (:file "_package_curlocs" :depends-on ("_package"))
  ))