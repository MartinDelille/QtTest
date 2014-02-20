#-------------------------------------------------
#
# Project created by QtCreator 2014-01-27T19:10:55
#
#-------------------------------------------------

QT       += core gui widgets testlib

TARGET = QtTest
TEMPLATE = app


SOURCES += main.cpp\
        QtTestWindow.cpp \
    TestGui.cpp

HEADERS  += QtTestWindow.h \
    TestGui.h

FORMS    += QtTestWindow.ui

message("coucou c'est nous!")

linux {
QMAKE_POST_LINK += echo "i m a linux";
}

mac {
QMAKE_POST_LINK += echo "i m a mac";
}

win32 {
QMAKE_POST_LINK += echo "i m a windows" &&
}

QMAKE_POST_LINK += echo "$$QT_MAJOR_VERSION $$QT_MINOR_VERSION"
