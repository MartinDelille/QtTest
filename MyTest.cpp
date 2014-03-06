#include "MyTest.h"

MyTest::MyTest(QObject *parent) :
	QObject(parent)
{
}

void MyTest::pouetTest1()
{
	QCOMPARE(1, 1);
}

void MyTest::pouetTest2()
{
	QCOMPARE(1, 1);
}

