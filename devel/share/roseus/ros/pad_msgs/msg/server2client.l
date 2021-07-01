;; Auto-generated. Do not edit!


(when (boundp 'pad_msgs::server2client)
  (if (not (find-package "PAD_MSGS"))
    (make-package "PAD_MSGS"))
  (shadow 'server2client (find-package "PAD_MSGS")))
(unless (find-package "PAD_MSGS::SERVER2CLIENT")
  (make-package "PAD_MSGS::SERVER2CLIENT"))

(in-package "ROS")
;;//! \htmlinclude server2client.msg.html


(defclass pad_msgs::server2client
  :super ros::object
  :slots (_info _index _x _y ))

(defmethod pad_msgs::server2client
  (:init
   (&key
    ((:info __info) "")
    ((:index __index) 0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    )
   (send-super :init)
   (setq _info (string __info))
   (setq _index (round __index))
   (setq _x (float __x))
   (setq _y (float __y))
   self)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; string _info
    4 (length _info)
    ;; int32 _index
    4
    ;; float64 _x
    8
    ;; float64 _y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _info
       (write-long (length _info) s) (princ _info s)
     ;; int32 _index
       (write-long _index s)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32 _index
     (setq _index (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get pad_msgs::server2client :md5sum-) "327f857dbd91047d5cf7bac1e69e9943")
(setf (get pad_msgs::server2client :datatype-) "pad_msgs/server2client")
(setf (get pad_msgs::server2client :definition-)
      "string info
int32 index
float64 x
float64 y
")



(provide :pad_msgs/server2client "327f857dbd91047d5cf7bac1e69e9943")


