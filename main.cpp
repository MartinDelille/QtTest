#include "QtTestWindow.h"
#include <QApplication>
#include "MyTest.h"

int main(int argc, char *argv[])
{
//	QApplication a(argc, argv);
//	QtTestWindow w;
//	w.show();

//	return a.exec();
	MyTest t;
	return QTest::qExec(&t, argc, argv);
}
