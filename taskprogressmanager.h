#ifndef TASKPROGRESSMANAGER_H
#define TASKPROGRESSMANAGER_H

#include <QDateTime>

class TaskProgress;

class TaskProgressManager
{
public:
    TaskProgressManager();


    typedef enum taskid_ {
        Sha1
    } TaskId;

    void setNewTask(TaskProgress * newtask);
    void SetEndTask(TaskId task_id, quint64 value, quint64 steps, const QDateTime & end);



private:
    TaskProgress * list_of_pointers;

};

#endif // TASKPROGRESSMANAGER_H
