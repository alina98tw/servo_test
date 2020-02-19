;; Auto-generated. Do not edit!


(when (boundp 'servo_test_pack::two_servos)
  (if (not (find-package "SERVO_TEST_PACK"))
    (make-package "SERVO_TEST_PACK"))
  (shadow 'two_servos (find-package "SERVO_TEST_PACK")))
(unless (find-package "SERVO_TEST_PACK::TWO_SERVOS")
  (make-package "SERVO_TEST_PACK::TWO_SERVOS"))

(in-package "ROS")
;;//! \htmlinclude two_servos.msg.html


(defclass servo_test_pack::two_servos
  :super ros::object
  :slots (_servo_1 _servo_2 ))

(defmethod servo_test_pack::two_servos
  (:init
   (&key
    ((:servo_1 __servo_1) 0.0)
    ((:servo_2 __servo_2) 0.0)
    )
   (send-super :init)
   (setq _servo_1 (float __servo_1))
   (setq _servo_2 (float __servo_2))
   self)
  (:servo_1
   (&optional __servo_1)
   (if __servo_1 (setq _servo_1 __servo_1)) _servo_1)
  (:servo_2
   (&optional __servo_2)
   (if __servo_2 (setq _servo_2 __servo_2)) _servo_2)
  (:serialization-length
   ()
   (+
    ;; float32 _servo_1
    4
    ;; float32 _servo_2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _servo_1
       (sys::poke _servo_1 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _servo_2
       (sys::poke _servo_2 (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _servo_1
     (setq _servo_1 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _servo_2
     (setq _servo_2 (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get servo_test_pack::two_servos :md5sum-) "9443fb1347cc03bf18054733acf7564a")
(setf (get servo_test_pack::two_servos :datatype-) "servo_test_pack/two_servos")
(setf (get servo_test_pack::two_servos :definition-)
      "float32 servo_1
float32 servo_2

")



(provide :servo_test_pack/two_servos "9443fb1347cc03bf18054733acf7564a")


