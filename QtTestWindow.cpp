#include "QtTestWindow.h"
#include "ui_QtTestWindow.h"

QtTestWindow::QtTestWindow(QWidget *parent) :
	QMainWindow(parent),
	ui(new Ui::QtTestWindow)
{
	ui->setupUi(this);
	pouet;
}

QtTestWindow::~QtTestWindow()
{
	delete ui;
}
