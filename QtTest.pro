#-------------------------------------------------
#
# Project created by QtCreator 2014-01-27T19:10:55
#
#-------------------------------------------------

QT       += core gui widgets

TARGET = QtTest
TEMPLATE = app

VERSION = 1.0.2

SOURCES += main.cpp\
        QtTestWindow.cpp

HEADERS  += QtTestWindow.h

FORMS    += QtTestWindow.ui

OTHER_FILES += QtTest.iss

mac {
	deploy.commands += macdeployqt QtTest.app -dmg &&
	deploy.commands += mv QtTest.dmg QtTest_v$${VERSION}.dmg;
}

win32 {
  deploy.commands += windeployqt release &
  deploy.commands += iscc $${TARGET}.iss
}

QMAKE_EXTRA_TARGETS += deploy

