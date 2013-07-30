#ifndef QPDIR_H
#define QPDIR_H

#include <QDir>
#include <QSet>

/**
 * @brief The QPDir klasa przechowująca zawartość jednego katalogu, a
 * także takie informację jak ilość plików, rozmiar plików w katalogu.
 */

#include "dpfile.h"
#include "taskprogress.h"

// Klasa to testów
class testdpdir;

class DPDir
{
public:
    DPDir(DPDir *, const QString & root, const QString & name);
    QPair<quint64, QPair<quint64, quint64> > walk(TaskProgressDirsAndFiles *task);

    QString path() const { return path_; }

    friend class testdpdir;

private:
    QString dirname_; // nazwa katalogu
    QString path_;    // ściezka dostępu do katalogu
    quint32 nfiles_;   // liczba plików w całym drzewie
    quint32 ndirs_;    // liczba katalogów w całym drzewie

    quint64 sfiles_;   // rozmiar wszystkich plików w całym drzewie


    QSet<DPFile*> files_; // pliki w danych katalogu
    QSet<DPDir*> dirs_;   // katalogi w danych katalogu


    DPDir * parent;      // wskaźnik na rodzica

};

#endif // QPDIR_H
