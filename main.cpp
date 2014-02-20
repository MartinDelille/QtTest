#include "QtTestWindow.h"
#include <QApplication>
#include <QThread>
#include <QDebug>

int main(int argc, char *argv[])
{
	bool testMode = false;

	for(int i = 1; i < argc; i++) {
		if(strcmp(argv[i], "test") == 0)
			testMode = true;
	}
	QApplication a(argc, argv);
	QtTestWindow w;
	w.show();

	if(testMode) {
		qDebug() << "Entering test mode";

		QThread::msleep(1000);
		qDebug() << "One";
		QThread::msleep(1000);
		qDebug() << "Two";
		QThread::msleep(1000);
		qDebug() << "Three";
		QThread::msleep(1000);
		qDebug() << "Bye";
		return 0;
	}
	else
		return a.exec();
}
