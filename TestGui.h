#ifndef TESTGUI_H
#define TESTGUI_H

#include <QObject>
#include <QTest>

class TestGui : public QObject
{
	Q_OBJECT
public:
	explicit TestGui(QObject *parent = 0);

signals:

private slots:
	void testGui();

};

#endif // TESTGUI_H
