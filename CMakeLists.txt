cmake_minimum_required (VERSION 2.8.11)

project(TravisTest)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)

find_package(Qt5Widgets)

add_executable(TravisTest
  main.cpp
  QtTestWindow.h
  QtTestWindow.cpp
  QtTestWindow.ui
)

qt5_use_modules(TravisTest Widgets)

qt5_wrap_ui(ui_QtTestWindow.h QtTestWindow.ui)
