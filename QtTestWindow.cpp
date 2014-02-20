#include "QtTestWindow.h"
#include "ui_QtTestWindow.h"

QtTestWindow::QtTestWindow(QWidget *parent) :
	QMainWindow(parent),
	ui(new Ui::QtTestWindow)
{
	ui->setupUi(this);
}

QtTestWindow::~QtTestWindow()
{
	delete ui;
}

void QtTestWindow::setTextLabel(QString content)
{
	ui->lineEdit->setText(content);
}

QString QtTestWindow::textLabel()
{
	return ui->lineEdit->text();
}
