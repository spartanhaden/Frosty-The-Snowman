# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "assignment_1_intro_to_ros: 1 messages, 1 services")

set(MSG_I_FLAGS "-Iassignment_1_intro_to_ros:/home/rogergomes/Frosty-The-Snowman/Assignment_1/catkin_ws/src/assignment_1_intro_to_ros/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(assignment_1_intro_to_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rogergomes/Frosty-The-Snowman/Assignment_1/catkin_ws/src/assignment_1_intro_to_ros/srv/WeatherInfoSrv.srv" NAME_WE)
add_custom_target(_assignment_1_intro_to_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assignment_1_intro_to_ros" "/home/rogergomes/Frosty-The-Snowman/Assignment_1/catkin_ws/src/assignment_1_intro_to_ros/srv/WeatherInfoSrv.srv" ""
)

get_filename_component(_filename "/home/rogergomes/Frosty-The-Snowman/Assignment_1/catkin_ws/src/assignment_1_intro_to_ros/msg/WeatherInfoMsg.msg" NAME_WE)
add_custom_target(_assignment_1_intro_to_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "assignment_1_intro_to_ros" "/home/rogergomes/Frosty-The-Snowman/Assignment_1/catkin_ws/src/assignment_1_intro_to_ros/msg/WeatherInfoMsg.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(assignment_1_intro_to_ros
  "/home/rogergomes/Frosty-The-Snowman/Assignment_1/catkin_ws/src/assignment_1_intro_to_ros/msg/WeatherInfoMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment_1_intro_to_ros
)

### Generating Services
_generate_srv_cpp(assignment_1_intro_to_ros
  "/home/rogergomes/Frosty-The-Snowman/Assignment_1/catkin_ws/src/assignment_1_intro_to_ros/srv/WeatherInfoSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment_1_intro_to_ros
)

### Generating Module File
_generate_module_cpp(assignment_1_intro_to_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment_1_intro_to_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(assignment_1_intro_to_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(assignment_1_intro_to_ros_generate_messages assignment_1_intro_to_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rogergomes/Frosty-The-Snowman/Assignment_1/catkin_ws/src/assignment_1_intro_to_ros/srv/WeatherInfoSrv.srv" NAME_WE)
add_dependencies(assignment_1_intro_to_ros_generate_messages_cpp _assignment_1_intro_to_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rogergomes/Frosty-The-Snowman/Assignment_1/catkin_ws/src/assignment_1_intro_to_ros/msg/WeatherInfoMsg.msg" NAME_WE)
add_dependencies(assignment_1_intro_to_ros_generate_messages_cpp _assignment_1_intro_to_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assignment_1_intro_to_ros_gencpp)
add_dependencies(assignment_1_intro_to_ros_gencpp assignment_1_intro_to_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assignment_1_intro_to_ros_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(assignment_1_intro_to_ros
  "/home/rogergomes/Frosty-The-Snowman/Assignment_1/catkin_ws/src/assignment_1_intro_to_ros/msg/WeatherInfoMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment_1_intro_to_ros
)

### Generating Services
_generate_srv_lisp(assignment_1_intro_to_ros
  "/home/rogergomes/Frosty-The-Snowman/Assignment_1/catkin_ws/src/assignment_1_intro_to_ros/srv/WeatherInfoSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment_1_intro_to_ros
)

### Generating Module File
_generate_module_lisp(assignment_1_intro_to_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment_1_intro_to_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(assignment_1_intro_to_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(assignment_1_intro_to_ros_generate_messages assignment_1_intro_to_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rogergomes/Frosty-The-Snowman/Assignment_1/catkin_ws/src/assignment_1_intro_to_ros/srv/WeatherInfoSrv.srv" NAME_WE)
add_dependencies(assignment_1_intro_to_ros_generate_messages_lisp _assignment_1_intro_to_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rogergomes/Frosty-The-Snowman/Assignment_1/catkin_ws/src/assignment_1_intro_to_ros/msg/WeatherInfoMsg.msg" NAME_WE)
add_dependencies(assignment_1_intro_to_ros_generate_messages_lisp _assignment_1_intro_to_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assignment_1_intro_to_ros_genlisp)
add_dependencies(assignment_1_intro_to_ros_genlisp assignment_1_intro_to_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assignment_1_intro_to_ros_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(assignment_1_intro_to_ros
  "/home/rogergomes/Frosty-The-Snowman/Assignment_1/catkin_ws/src/assignment_1_intro_to_ros/msg/WeatherInfoMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment_1_intro_to_ros
)

### Generating Services
_generate_srv_py(assignment_1_intro_to_ros
  "/home/rogergomes/Frosty-The-Snowman/Assignment_1/catkin_ws/src/assignment_1_intro_to_ros/srv/WeatherInfoSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment_1_intro_to_ros
)

### Generating Module File
_generate_module_py(assignment_1_intro_to_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment_1_intro_to_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(assignment_1_intro_to_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(assignment_1_intro_to_ros_generate_messages assignment_1_intro_to_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rogergomes/Frosty-The-Snowman/Assignment_1/catkin_ws/src/assignment_1_intro_to_ros/srv/WeatherInfoSrv.srv" NAME_WE)
add_dependencies(assignment_1_intro_to_ros_generate_messages_py _assignment_1_intro_to_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/rogergomes/Frosty-The-Snowman/Assignment_1/catkin_ws/src/assignment_1_intro_to_ros/msg/WeatherInfoMsg.msg" NAME_WE)
add_dependencies(assignment_1_intro_to_ros_generate_messages_py _assignment_1_intro_to_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(assignment_1_intro_to_ros_genpy)
add_dependencies(assignment_1_intro_to_ros_genpy assignment_1_intro_to_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS assignment_1_intro_to_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment_1_intro_to_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/assignment_1_intro_to_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(assignment_1_intro_to_ros_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment_1_intro_to_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/assignment_1_intro_to_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(assignment_1_intro_to_ros_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment_1_intro_to_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment_1_intro_to_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/assignment_1_intro_to_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(assignment_1_intro_to_ros_generate_messages_py std_msgs_generate_messages_py)
