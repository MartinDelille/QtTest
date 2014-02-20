#include "TestGui.h"
#include <QLineEdit>

TestGui::TestGui(QObject *parent) :
	QObject(parent)
{
}

void TestGui::testGui()
{
	QLineEdit lineEdit;

	QTest::keyClicks(&lineEdit, "hello world");

	QCOMPARE(lineEdit.text(), QString("hello world"));
}
