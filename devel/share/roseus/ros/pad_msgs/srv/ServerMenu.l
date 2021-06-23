;; Auto-generated. Do not edit!


(when (boundp 'pad_msgs::ServerMenu)
  (if (not (find-package "PAD_MSGS"))
    (make-package "PAD_MSGS"))
  (shadow 'ServerMenu (find-package "PAD_MSGS")))
(unless (find-package "PAD_MSGS::SERVERMENU")
  (make-package "PAD_MSGS::SERVERMENU"))
(unless (find-package "PAD_MSGS::SERVERMENUREQUEST")
  (make-package "PAD_MSGS::SERVERMENUREQUEST"))
(unless (find-package "PAD_MSGS::SERVERMENURESPONSE")
  (make-package "PAD_MSGS::SERVERMENURESPONSE"))

(in-package "ROS")





(defclass pad_msgs::ServerMenuRequest
  :super ros::object
  :slots (_clientReq ))

(defmethod pad_msgs::ServerMenuRequest
  (:init
   (&key
    ((:clientReq __clientReq) 0)
    )
   (send-super :init)
   (setq _clientReq (round __clientReq))
   self)
  (:clientReq
   (&optional __clientReq)
   (if __clientReq (setq _clientReq __clientReq)) _clientReq)
  (:serialization-length
   ()
   (+
    ;; uint8 _clientReq
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _clientReq
       (write-byte _clientReq s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _clientReq
     (setq _clientReq (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass pad_msgs::ServerMenuResponse
  :super ros::object
  :slots (_serverRes ))

(defmethod pad_msgs::ServerMenuResponse
  (:init
   (&key
    ((:serverRes __serverRes) "")
    )
   (send-super :init)
   (setq _serverRes (string __serverRes))
   self)
  (:serverRes
   (&optional __serverRes)
   (if __serverRes (setq _serverRes __serverRes)) _serverRes)
  (:serialization-length
   ()
   (+
    ;; string _serverRes
    4 (length _serverRes)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _serverRes
       (write-long (length _serverRes) s) (princ _serverRes s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _serverRes
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _serverRes (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass pad_msgs::ServerMenu
  :super ros::object
  :slots ())

(setf (get pad_msgs::ServerMenu :md5sum-) "32596eb33160ebf8976ecc13590aa29c")
(setf (get pad_msgs::ServerMenu :datatype-) "pad_msgs/ServerMenu")
(setf (get pad_msgs::ServerMenu :request) pad_msgs::ServerMenuRequest)
(setf (get pad_msgs::ServerMenu :response) pad_msgs::ServerMenuResponse)

(defmethod pad_msgs::ServerMenuRequest
  (:response () (instance pad_msgs::ServerMenuResponse :init)))

(setf (get pad_msgs::ServerMenuRequest :md5sum-) "32596eb33160ebf8976ecc13590aa29c")
(setf (get pad_msgs::ServerMenuRequest :datatype-) "pad_msgs/ServerMenuRequest")
(setf (get pad_msgs::ServerMenuRequest :definition-)
      "uint8 clientReq
---
string serverRes 

")

(setf (get pad_msgs::ServerMenuResponse :md5sum-) "32596eb33160ebf8976ecc13590aa29c")
(setf (get pad_msgs::ServerMenuResponse :datatype-) "pad_msgs/ServerMenuResponse")
(setf (get pad_msgs::ServerMenuResponse :definition-)
      "uint8 clientReq
---
string serverRes 

")



(provide :pad_msgs/ServerMenu "32596eb33160ebf8976ecc13590aa29c")


