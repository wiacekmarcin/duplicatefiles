#include "mainwindow.h"
#include <QApplication>


#ifndef TEST_DP

#include "dpdir.h"
int main(int argc, char *argv[])
{
    DPDir b = DPDir(NULL, QString("../test"), QString("A"));

    b.walk(NULL);

    QApplication a(argc, argv);
    MainWindow w;
    w.show();
    



    return a.exec();
}

#else

#include "test.h"

QTEST_MAIN(testdpdir)
#include "moc_test.cpp"

#endif
