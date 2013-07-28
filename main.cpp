#include "mainwindow.h"
#include <QApplication>

#ifndef TEST_DP

int main(int argc, char *argv[])
{
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
