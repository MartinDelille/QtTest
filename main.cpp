#include "QtTestWindow.h"
#include <QApplication>

#ifdef POUET
#warning just a test
#endif// POUET
int main(int argc, char *argv[])
{
	QApplication a(argc, argv);
	QtTestWindow w;
	w.show();

	return a.exec();
}
