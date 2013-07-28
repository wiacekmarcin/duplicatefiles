#include "dpfile.h"
#include "err.h"
#include "utils.h"
#include "taskprogress.h"
#include <QFile>

#include "dpdir.h"

long long DPFile::cnt_all_= 0;

DPFile::DPFile(const DPDir *fdir, const QString &name, size_t size, const QDateTime &date_created, const QDateTime &date_modify)
    : path_(fdir), fid_(cnt_all_++), filename_(name), size_(size), date_created_(date_created), date_modify_(date_modify)
{

}

QString DPFile::fullName()
{
    if (path_)
        return path_->path() + "/" + filename_;
    else
        return filename_;
}


QString DPFile::createSha1(QCryptographicHash * crypto, TaskProgressManager *taskmgr)
{
    QFile filebin(fullName());
    if (!filebin.open(QIODevice::ReadOnly) || filebin.size() > 3000000000L)
        throw Sha1Exception(QString::fromUtf8("Za duży rozmiar pliku. ") + size2human(filebin.size(), true));
    quint64 fsize = filebin.size();
    TaskProgress p(taskmgr, TaskProgressManager::Sha1, filename_, fsize);

    crypto->reset();
    quint64 msize = 10 * 1024* 1024 ; //0xFFFFFFFF;


    if (fsize > msize)
    {
        while (!filebin.atEnd())
        {
            QByteArray line = filebin.read ( msize );
            p += line.size();
            crypto->addData(line);
        }
    }
    else
    {
        QByteArray line = filebin.readAll();
        p += line.size();
        crypto->addData(line);
    }
    filebin.close();
    QString res = crypto->result().toHex();
    crypto->reset();
    return res;
}

