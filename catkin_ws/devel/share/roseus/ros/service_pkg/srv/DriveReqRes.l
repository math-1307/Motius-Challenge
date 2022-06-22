;; Auto-generated. Do not edit!


(when (boundp 'service_pkg::DriveReqRes)
  (if (not (find-package "SERVICE_PKG"))
    (make-package "SERVICE_PKG"))
  (shadow 'DriveReqRes (find-package "SERVICE_PKG")))
(unless (find-package "SERVICE_PKG::DRIVEREQRES")
  (make-package "SERVICE_PKG::DRIVEREQRES"))
(unless (find-package "SERVICE_PKG::DRIVEREQRESREQUEST")
  (make-package "SERVICE_PKG::DRIVEREQRESREQUEST"))
(unless (find-package "SERVICE_PKG::DRIVEREQRESRESPONSE")
  (make-package "SERVICE_PKG::DRIVEREQRESRESPONSE"))

(in-package "ROS")





(defclass service_pkg::DriveReqResRequest
  :super ros::object
  :slots (_lin_vel _ang_vel ))

(defmethod service_pkg::DriveReqResRequest
  (:init
   (&key
    ((:lin_vel __lin_vel) 0.0)
    ((:ang_vel __ang_vel) 0.0)
    )
   (send-super :init)
   (setq _lin_vel (float __lin_vel))
   (setq _ang_vel (float __ang_vel))
   self)
  (:lin_vel
   (&optional __lin_vel)
   (if __lin_vel (setq _lin_vel __lin_vel)) _lin_vel)
  (:ang_vel
   (&optional __ang_vel)
   (if __ang_vel (setq _ang_vel __ang_vel)) _ang_vel)
  (:serialization-length
   ()
   (+
    ;; float64 _lin_vel
    8
    ;; float64 _ang_vel
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _lin_vel
       (sys::poke _lin_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ang_vel
       (sys::poke _ang_vel (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _lin_vel
     (setq _lin_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ang_vel
     (setq _ang_vel (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass service_pkg::DriveReqResResponse
  :super ros::object
  :slots (_msg_feedback ))

(defmethod service_pkg::DriveReqResResponse
  (:init
   (&key
    ((:msg_feedback __msg_feedback) "")
    )
   (send-super :init)
   (setq _msg_feedback (string __msg_feedback))
   self)
  (:msg_feedback
   (&optional __msg_feedback)
   (if __msg_feedback (setq _msg_feedback __msg_feedback)) _msg_feedback)
  (:serialization-length
   ()
   (+
    ;; string _msg_feedback
    4 (length _msg_feedback)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _msg_feedback
       (write-long (length _msg_feedback) s) (princ _msg_feedback s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _msg_feedback
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _msg_feedback (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass service_pkg::DriveReqRes
  :super ros::object
  :slots ())

(setf (get service_pkg::DriveReqRes :md5sum-) "ab3dacaa1aef4690d4987eda2d4ff0e2")
(setf (get service_pkg::DriveReqRes :datatype-) "service_pkg/DriveReqRes")
(setf (get service_pkg::DriveReqRes :request) service_pkg::DriveReqResRequest)
(setf (get service_pkg::DriveReqRes :response) service_pkg::DriveReqResResponse)

(defmethod service_pkg::DriveReqResRequest
  (:response () (instance service_pkg::DriveReqResResponse :init)))

(setf (get service_pkg::DriveReqResRequest :md5sum-) "ab3dacaa1aef4690d4987eda2d4ff0e2")
(setf (get service_pkg::DriveReqResRequest :datatype-) "service_pkg/DriveReqResRequest")
(setf (get service_pkg::DriveReqResRequest :definition-)
      "float64 lin_vel
float64 ang_vel
---
string msg_feedback

")

(setf (get service_pkg::DriveReqResResponse :md5sum-) "ab3dacaa1aef4690d4987eda2d4ff0e2")
(setf (get service_pkg::DriveReqResResponse :datatype-) "service_pkg/DriveReqResResponse")
(setf (get service_pkg::DriveReqResResponse :definition-)
      "float64 lin_vel
float64 ang_vel
---
string msg_feedback

")



(provide :service_pkg/DriveReqRes "ab3dacaa1aef4690d4987eda2d4ff0e2")


