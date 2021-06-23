
(cl:in-package :asdf)

(defsystem "pad_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "ServerMenu" :depends-on ("_package_ServerMenu"))
    (:file "_package_ServerMenu" :depends-on ("_package"))
  ))