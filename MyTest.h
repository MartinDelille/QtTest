#ifndef MYTEST_H
#define MYTEST_H

#include <QObject>
#include <QtTest>

class MyTest : public QObject
{
	Q_OBJECT
public:
	explicit MyTest(QObject *parent = 0);

private slots:
	void pouetTest1();
	void pouetTest2();
};

#endif // MYTEST_H
