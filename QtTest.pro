#-------------------------------------------------
#
# Project created by QtCreator 2014-01-27T19:10:55
#
#-------------------------------------------------

QT       += core gui widgets

TARGET = QtTest
TEMPLATE = app

VERSION = 1.0.0

SOURCES += main.cpp\
        QtTestWindow.cpp

HEADERS  += QtTestWindow.h

FORMS    += QtTestWindow.ui

OTHER_FILES += QtTest.iss

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

CONFIG(release, debug|release) {
	win32 {
		QMAKE_POST_LINK += windeployqt release &

		QMAKE_POST_LINK += echo "====== Deploying $${_PRO_FILE_PWD_}/$${TARGET}.iss ======" &
		QMAKE_POST_LINK += $${QMAKE_COPY} $$shell_path($${_PRO_FILE_PWD_}/$${TARGET}.iss) . &
		QMAKE_POST_LINK += iscc $${TARGET}.iss &
	}
}
