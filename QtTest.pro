#-------------------------------------------------
#
# Project created by QtCreator 2014-01-27T19:10:55
#
#-------------------------------------------------

QT       += core gui widgets

TARGET = QtTest
TEMPLATE = app

VERSION = 1.0.1

SOURCES += main.cpp\
        QtTestWindow.cpp

HEADERS  += QtTestWindow.h

FORMS    += QtTestWindow.ui

message("coucou c'est nous!")

linux {
QMAKE_POST_LINK += echo "i m a linux";
}

mac {
QMAKE_POST_LINK += echo "i m a mac";

QMAKE_POST_LINK += macdeployqt QtTest.app -dmg;
#QMAKE_POST_LINK += mv QtTest.dmg QtTest_${VERSION}.dmg;
}

win32 {
QMAKE_POST_LINK += echo "i m a windows" &&
}

QMAKE_POST_LINK += echo "$$QT_MAJOR_VERSION $$QT_MINOR_VERSION"
