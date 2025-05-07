;; Auto-generated. Do not edit!


(when (boundp 'lio_sam_6axis::save_map)
  (if (not (find-package "LIO_SAM_6AXIS"))
    (make-package "LIO_SAM_6AXIS"))
  (shadow 'save_map (find-package "LIO_SAM_6AXIS")))
(unless (find-package "LIO_SAM_6AXIS::SAVE_MAP")
  (make-package "LIO_SAM_6AXIS::SAVE_MAP"))
(unless (find-package "LIO_SAM_6AXIS::SAVE_MAPREQUEST")
  (make-package "LIO_SAM_6AXIS::SAVE_MAPREQUEST"))
(unless (find-package "LIO_SAM_6AXIS::SAVE_MAPRESPONSE")
  (make-package "LIO_SAM_6AXIS::SAVE_MAPRESPONSE"))

(in-package "ROS")





(defclass lio_sam_6axis::save_mapRequest
  :super ros::object
  :slots ())

(defmethod lio_sam_6axis::save_mapRequest
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

(defclass lio_sam_6axis::save_mapResponse
  :super ros::object
  :slots (_success ))

(defmethod lio_sam_6axis::save_mapResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass lio_sam_6axis::save_map
  :super ros::object
  :slots ())

(setf (get lio_sam_6axis::save_map :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get lio_sam_6axis::save_map :datatype-) "lio_sam_6axis/save_map")
(setf (get lio_sam_6axis::save_map :request) lio_sam_6axis::save_mapRequest)
(setf (get lio_sam_6axis::save_map :response) lio_sam_6axis::save_mapResponse)

(defmethod lio_sam_6axis::save_mapRequest
  (:response () (instance lio_sam_6axis::save_mapResponse :init)))

(setf (get lio_sam_6axis::save_mapRequest :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get lio_sam_6axis::save_mapRequest :datatype-) "lio_sam_6axis/save_mapRequest")
(setf (get lio_sam_6axis::save_mapRequest :definition-)
      "#string destination
#float32 resolution
#string name
---
bool success

")

(setf (get lio_sam_6axis::save_mapResponse :md5sum-) "358e233cde0c8a8bcfea4ce193f8fc15")
(setf (get lio_sam_6axis::save_mapResponse :datatype-) "lio_sam_6axis/save_mapResponse")
(setf (get lio_sam_6axis::save_mapResponse :definition-)
      "#string destination
#float32 resolution
#string name
---
bool success

")



(provide :lio_sam_6axis/save_map "358e233cde0c8a8bcfea4ce193f8fc15")


