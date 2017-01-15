
(cl:in-package :asdf)

(defsystem "assignment_1_intro_to_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "WeatherInfoMsg" :depends-on ("_package_WeatherInfoMsg"))
    (:file "_package_WeatherInfoMsg" :depends-on ("_package"))
  ))