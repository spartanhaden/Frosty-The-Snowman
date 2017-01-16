
(cl:in-package :asdf)

(defsystem "assignment_1_intro_to_ros-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "WeatherInfoSrv" :depends-on ("_package_WeatherInfoSrv"))
    (:file "_package_WeatherInfoSrv" :depends-on ("_package"))
  ))