;; Auto-generated. Do not edit!


(when (boundp 'pad_msgs::ClientResponse)
  (if (not (find-package "PAD_MSGS"))
    (make-package "PAD_MSGS"))
  (shadow 'ClientResponse (find-package "PAD_MSGS")))
(unless (find-package "PAD_MSGS::CLIENTRESPONSE")
  (make-package "PAD_MSGS::CLIENTRESPONSE"))
(unless (find-package "PAD_MSGS::CLIENTRESPONSEREQUEST")
  (make-package "PAD_MSGS::CLIENTRESPONSEREQUEST"))
(unless (find-package "PAD_MSGS::CLIENTRESPONSERESPONSE")
  (make-package "PAD_MSGS::CLIENTRESPONSERESPONSE"))

(in-package "ROS")





(defclass pad_msgs::ClientResponseRequest
  :super ros::object
  :slots ())

(defmethod pad_msgs::ClientResponseRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass pad_msgs::ClientResponseResponse
  :super ros::object
  :slots (_clientResponse ))

(defmethod pad_msgs::ClientResponseResponse
  (:init
   (&key
    ((:clientResponse __clientResponse) 0)
    )
   (send-super :init)
   (setq _clientResponse (round __clientResponse))
   self)
  (:clientResponse
   (&optional __clientResponse)
   (if __clientResponse (setq _clientResponse __clientResponse)) _clientResponse)
  (:serialization-length
   ()
   (+
    ;; uint8 _clientResponse
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _clientResponse
       (write-byte _clientResponse s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _clientResponse
     (setq _clientResponse (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass pad_msgs::ClientResponse
  :super ros::object
  :slots ())

(setf (get pad_msgs::ClientResponse :md5sum-) "cb3d6a26c15df5cc0e2a4cf9e7a416cb")
(setf (get pad_msgs::ClientResponse :datatype-) "pad_msgs/ClientResponse")
(setf (get pad_msgs::ClientResponse :request) pad_msgs::ClientResponseRequest)
(setf (get pad_msgs::ClientResponse :response) pad_msgs::ClientResponseResponse)

(defmethod pad_msgs::ClientResponseRequest
  (:response () (instance pad_msgs::ClientResponseResponse :init)))

(setf (get pad_msgs::ClientResponseRequest :md5sum-) "cb3d6a26c15df5cc0e2a4cf9e7a416cb")
(setf (get pad_msgs::ClientResponseRequest :datatype-) "pad_msgs/ClientResponseRequest")
(setf (get pad_msgs::ClientResponseRequest :definition-)
      "---
uint8 clientResponse # Indice dell'opzione scelta
")

(setf (get pad_msgs::ClientResponseResponse :md5sum-) "cb3d6a26c15df5cc0e2a4cf9e7a416cb")
(setf (get pad_msgs::ClientResponseResponse :datatype-) "pad_msgs/ClientResponseResponse")
(setf (get pad_msgs::ClientResponseResponse :definition-)
      "---
uint8 clientResponse # Indice dell'opzione scelta
")



(provide :pad_msgs/ClientResponse "cb3d6a26c15df5cc0e2a4cf9e7a416cb")


