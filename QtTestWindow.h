#ifndef QTTESTWINDOW_H
#define QTTESTWINDOW_H

#include <QMainWindow>

namespace Ui {
class QtTestWindow;
}

class QtTestWindow : public QMainWindow
{
	Q_OBJECT

public:
	explicit QtTestWindow(QWidget *parent = 0);
	~QtTestWindow();

private:
	Ui::QtTestWindow *ui;
};

#endif // QTTESTWINDOW_H
