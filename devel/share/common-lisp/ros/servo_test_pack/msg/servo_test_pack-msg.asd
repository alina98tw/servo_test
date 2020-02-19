
(cl:in-package :asdf)

(defsystem "servo_test_pack-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "two_servos" :depends-on ("_package_two_servos"))
    (:file "_package_two_servos" :depends-on ("_package"))
  ))