#-------------------------------------------------
#
# Project created by QtCreator 2014-01-27T19:10:55
#
#-------------------------------------------------

QT       += core gui widgets

TARGET = QtTest
TEMPLATE = app


SOURCES += main.cpp\
        QtTestWindow.cpp

HEADERS  += QtTestWindow.h

FORMS    += QtTestWindow.ui

unix {
    INCLUDEPATH += /usr/local/include
}
win32 {
#    !exists($$(BOOST_PATH)) {
#        error("You must define BOOST_PATH")
#    }

    INCLUDEPATH += $$(BOOST_PATH)
}

message("coucou c'est nous!")

#linux {
#QMAKE_POST_LINK += echo "i m a linux";
#}

#mac {
#QMAKE_POST_LINK += echo "i m a mac";
#QMAKE_MAC_SDK = macosx10.9
#}

#win32 {
#QMAKE_POST_LINK += echo "i m a windows" &&
#}

#QMAKE_POST_LINK += echo "$$QT_MAJOR_VERSION $$QT_MINOR_VERSION"
#QMAKE_POST_LINK += echo $$(PATH)
