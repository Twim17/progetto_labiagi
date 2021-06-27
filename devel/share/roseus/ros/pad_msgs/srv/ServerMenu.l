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
  :slots (_clientReq _nomeUtente _destinatario _x _y ))

(defmethod pad_msgs::ServerMenuRequest
  (:init
   (&key
    ((:clientReq __clientReq) 0)
    ((:nomeUtente __nomeUtente) "")
    ((:destinatario __destinatario) "")
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _clientReq (round __clientReq))
   (setq _nomeUtente (string __nomeUtente))
   (setq _destinatario (string __destinatario))
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:clientReq
   (&optional __clientReq)
   (if __clientReq (setq _clientReq __clientReq)) _clientReq)
  (:nomeUtente
   (&optional __nomeUtente)
   (if __nomeUtente (setq _nomeUtente __nomeUtente)) _nomeUtente)
  (:destinatario
   (&optional __destinatario)
   (if __destinatario (setq _destinatario __destinatario)) _destinatario)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int32 _clientReq
    4
    ;; string _nomeUtente
    4 (length _nomeUtente)
    ;; string _destinatario
    4 (length _destinatario)
    ;; float64 _x
    8
    ;; float64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _clientReq
       (write-long _clientReq s)
     ;; string _nomeUtente
       (write-long (length _nomeUtente) s) (princ _nomeUtente s)
     ;; string _destinatario
       (write-long (length _destinatario) s) (princ _destinatario s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _clientReq
     (setq _clientReq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _nomeUtente
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _nomeUtente (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _destinatario
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _destinatario (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass pad_msgs::ServerMenuResponse
  :super ros::object
  :slots (_serverRes _warning ))

(defmethod pad_msgs::ServerMenuResponse
  (:init
   (&key
    ((:serverRes __serverRes) "")
    ((:warning __warning) 0)
    )
   (send-super :init)
   (setq _serverRes (string __serverRes))
   (setq _warning (round __warning))
   self)
  (:serverRes
   (&optional __serverRes)
   (if __serverRes (setq _serverRes __serverRes)) _serverRes)
  (:warning
   (&optional __warning)
   (if __warning (setq _warning __warning)) _warning)
  (:serialization-length
   ()
   (+
    ;; string _serverRes
    4 (length _serverRes)
    ;; int32 _warning
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _serverRes
       (write-long (length _serverRes) s) (princ _serverRes s)
     ;; int32 _warning
       (write-long _warning s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _serverRes
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _serverRes (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _warning
     (setq _warning (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass pad_msgs::ServerMenu
  :super ros::object
  :slots ())

(setf (get pad_msgs::ServerMenu :md5sum-) "da9a91b90d13b3c11f89db69f013608a")
(setf (get pad_msgs::ServerMenu :datatype-) "pad_msgs/ServerMenu")
(setf (get pad_msgs::ServerMenu :request) pad_msgs::ServerMenuRequest)
(setf (get pad_msgs::ServerMenu :response) pad_msgs::ServerMenuResponse)

(defmethod pad_msgs::ServerMenuRequest
  (:response () (instance pad_msgs::ServerMenuResponse :init)))

(setf (get pad_msgs::ServerMenuRequest :md5sum-) "da9a91b90d13b3c11f89db69f013608a")
(setf (get pad_msgs::ServerMenuRequest :datatype-) "pad_msgs/ServerMenuRequest")
(setf (get pad_msgs::ServerMenuRequest :definition-)
      "int32 clientReq
string nomeUtente
string destinatario
float64 x
float64 y
---
string serverRes
int32 warning 

")

(setf (get pad_msgs::ServerMenuResponse :md5sum-) "da9a91b90d13b3c11f89db69f013608a")
(setf (get pad_msgs::ServerMenuResponse :datatype-) "pad_msgs/ServerMenuResponse")
(setf (get pad_msgs::ServerMenuResponse :definition-)
      "int32 clientReq
string nomeUtente
string destinatario
float64 x
float64 y
---
string serverRes
int32 warning 

")



(provide :pad_msgs/ServerMenu "da9a91b90d13b3c11f89db69f013608a")


