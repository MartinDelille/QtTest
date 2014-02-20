#include "QtTestWindow.h"
#include <QApplication>
#include <QThread>
#include <QDebug>
#include <TestGui.h>

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

		qDebug() << "One";
		w.setTextLabel("One");
		if(w.textLabel() != "One")
			return -1;
		qDebug() << "Two";
		w.setTextLabel("Two");
		if(w.textLabel() != "Two")
			return -1;
		qDebug() << "Three";
		w.setTextLabel("Three");
		if(w.textLabel() != "Three")
			return -1;
		qDebug() << "Bye";

		TestGui testGui;
		return QTest::qExec(&testGui);
	}
	else
		return a.exec();
}
