
(cl:in-package :asdf)

(defsystem "service_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "DriveReqRes" :depends-on ("_package_DriveReqRes"))
    (:file "_package_DriveReqRes" :depends-on ("_package"))
  ))