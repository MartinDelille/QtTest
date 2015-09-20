#include "QtTestWindow.h"
#include <QApplication>

int main(int argc, char *argv[])
{
	char* test = new char[8];
	QApplication a(argc, argv);
	QtTestWindow w;
	w.show();

	int b;

	int c = b + 3;

	int e;

	c = e + b;

	return a.exec();
}
