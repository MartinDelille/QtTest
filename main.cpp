#include "QtTestWindow.h"
#include <QApplication>
#include <QDebug>
#include <sndfile.hh>

int main(int argc, char *argv[])
{
	QApplication a(argc, argv);

	if(argc > 1) {
		SndfileHandle handle(argv[1]);

		qDebug() << handle.channels();
	}

	QtTestWindow w;
	w.show();

	return a.exec();
}
