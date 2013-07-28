#include "test.h"

#ifdef TEST_DP
testdpdir::testdpdir(QObject *parent) :
    QObject(parent)
{
}

#include "dpdir.h"

void testdpdir::constructor()
{
    DPDir a = DPDir(NULL, QString('/home/marcinw/TestDuplicateFiles'), QString("A"));
  /*  a.dirname_;
    QString path_;    // ściezka dostępu do katalogu
    quint32 nfiles;   // liczba plików w całym drzewie
    quint32 ndirs;    // liczba katalogów w całym drzewie

    quint64 sfiles;   // rozmiar wszystkich plików w całym drzewie


    QSet<DPFile*> files; // pliki w danych katalogu
    QSet<DPDir*> dirs;   // katalogi w danych katalogu


    DPDir * parent;      // wskaźnik na r*/
}


#endif

