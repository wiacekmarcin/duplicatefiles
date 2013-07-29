#include "dpdir.h"

#include <QFileInfoList>
#include "taskprogress.h"

DPDir::DPDir(DPDir * parent, const QString &root, const QString &name)
    : dirname_(name), path_(QDir(root).absolutePath()), parent(parent), ndirs(0), nfiles(0), sfiles(0)
{
}

QPair<quint64, QPair<quint64, quint64> > DPDir::walk(TaskProgressDirsAndFiles * task)
{
    QDir dir = QDir(path_);
    dir.cd(dirname_);
    dir.setFilter(QDir::AllEntries | QDir::NoDotAndDotDot);

    if (task)
        task->setItemName(path_);

    QFileInfoList flist = dir.entryInfoList();
    DPDir * subdir;
    quint64 nfiles = 0;
    quint64 sfiles = 0;
    quint64 ndirs = 0;
    for (QFileInfoList::iterator it = flist.begin(); it != flist.end(); ++it)
    {
        if (it->isDir()) {
            subdir = new DPDir(this, dir.absolutePath(), it->baseName());
            dirs.insert(subdir);
            QPair<quint64, QPair<quint64, quint64> > numbers = subdir->walk(task);
            ndirs += numbers.second.second + 1; //ilosc katalogow ponizej plus 1
            sfiles += numbers.first;
            nfiles += numbers.second.first;
            if (task)
                task->AddValue(0, 0, 1);
        }
        else if (it->isFile())
        {
            files.insert(new DPFile(this, it->completeBaseName(), it->size(), it->created(), it->lastModified()));
            ++nfiles;
            sfiles += it->size();
            if (task) {
                *task += it->size();
                task->AddValue(it->size(), 1, 0);
            }
        }
        else {
            ; //do nothing
        }
    }

    this->nfiles = nfiles;
    this->sfiles = sfiles;
    this->ndirs = ndirs;

    return QPair<quint64, QPair<quint64, quint64> >(sfiles, QPair<quint64, quint64>(nfiles, ndirs));
}
