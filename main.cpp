#include "QtTestWindow.h"
#include <QApplication>

int main(int argc, char *argv[])
{
	char* test = new char[8];
	QApplication a(argc, argv);
	QtTestWindow w;
	w.show();

	return a.exec();
}
