#include "test.h"


#ifdef TEST_DP

#include <QtTest/QTest>

testdpdir::testdpdir(QObject *parent) :
    QObject(parent)
{
}

#include "dpdir.h"
void testdpdir::constructor()
{
    DPDir a = DPDir(NULL, QString("~/development/test"), QString("A"));

    QCOMPARE(QString("A") , a.dirname_);
    QCOMPARE(QString('/home/mwiacek/development/test') , a.path_);
    a.walk(NULL);
    QCOMPARE((int)329 , (int)a.nfiles_);
    QCOMPARE((int)135 , (int)a.ndirs_);
    QCOMPARE((int)135 , (int)a.ndirs_);
    QCOMPARE((int)105628 , (int)a.sfiles_);
}


#endif

