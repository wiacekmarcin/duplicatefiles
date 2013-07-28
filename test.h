#ifndef TESTDPDIR_H
#define TESTDPDIR_H

#include <QObject>
#include <QtTest/QtTest>

#ifdef TEST_DP
class testdpdir : public QObject
{
    Q_OBJECT
public:
    explicit testdpdir(QObject *parent = 0);
    
signals:
    
public slots:
    

private slots:
    void constructor();
};
#endif

#endif // TESTDPDIR_H
