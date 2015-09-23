#include "QtTestWindow.h"
#include <QApplication>

int main(int argc, char *argv[])
{
	QApplication a(argc, argv);
	QtTestWindow w;
	w.show();

	return a.exec();
}
