
(cl:in-package :asdf)

(defsystem "pad_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "server2client" :depends-on ("_package_server2client"))
    (:file "_package_server2client" :depends-on ("_package"))
  ))