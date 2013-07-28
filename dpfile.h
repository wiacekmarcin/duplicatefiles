#ifndef DPFILE_H
#define DPFILE_H

#include <QString>
#include <QDateTime>
#include <QCryptographicHash>

#include "taskprogressmanager.h"

class DPDir;

/**
 * Klasa przechowująca informacje o pojedyńczym pliku
 **/
class DPFile
{
public:
    DPFile(const DPDir * fdir, const QString & name, size_t size, const QDateTime & date_created, const QDateTime & date_modify);
    QString createSha1(QCryptographicHash *crypto, TaskProgressManager * taskmgr);

    QString fullName();

private:
    const DPDir * path_;     //wskaźnik na katalog, który zawiera ten plik
    long long fid_;    //identyfikator pojedyńczego pliku
    QString filename_; //nazwa pliku
    size_t size_; //wielkość pliku
    QDateTime date_created_; //data utworzenia
    QDateTime date_modify_;  //data ostatniej modyfikacji
    static long long cnt_all_; //Ilość wszystkich plików

};

#endif // DPFILE_H
