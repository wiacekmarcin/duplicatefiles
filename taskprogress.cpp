#include "taskprogress.h"

TaskProgress::
TaskProgress(TaskProgressManager *mgr, TaskProgressManager::TaskId tid, const QString &name, quint64 maxvalue) :
    mgr_(mgr), taks_id_(tid), name_(name), value_(0), maxvalue_(maxvalue), steps_(0), ticks_(0), startTask_(QDateTime::currentDateTime())
{
    if (mgr)
        mgr->setNewTask(this);
}

TaskProgress::~TaskProgress()
{
    if (mgr_)
        mgr_->SetEndTask(taks_id_, value_, steps_, QDateTime::currentDateTime());
}

TaskProgress::TaskProgress(const TaskProgress &copy)
{
    if (&copy == this)
        return;
    this->name_ = copy.name_;
    this->value_ = copy.value_;
    this->maxvalue_ = copy.maxvalue_;
    this->steps_ = copy.steps_;
    this->ticks_ = copy.ticks_;

    this->startTask_ = copy.startTask_;
    this->endTask_ = copy.endTask_;
}

TaskProgress &TaskProgress::operator=(const TaskProgress &copy)
{
    if (&copy == this)
        return *this;
    this->name_ = copy.name_;
    this->value_ = copy.value_;
    this->maxvalue_ = copy.maxvalue_;
    this->steps_ = copy.steps_;
    this->ticks_ = copy.ticks_;

    this->startTask_ = copy.startTask_;
    this->endTask_ = copy.endTask_;
    return *this;
}

TaskProgress TaskProgress::operator+(quint64 value)
{
    TaskProgress a = *this;
    a.value_ += value;
    ++a.steps_;
    if (a.maxvalue_ && a.value_ > a.maxvalue_)
        a.value_ = a.maxvalue_;
    return a;
}

TaskProgress &TaskProgress::operator+=(quint64 value)
{
    value_ += value;
    ++steps_;
    if (maxvalue_ && value_ > maxvalue_)
        value_ = maxvalue_;
    return *this;
}


void TaskProgress::setValue(quint64 value)
{
    value_ = value;
    ++steps_;
    if (maxvalue_ && value_ > maxvalue_)
        value_ = maxvalue_;
}

void TaskProgress::setValue(quint64 value, quint64 steps)
{
    value_ = value;
    steps_ = steps;
    if (value_ > maxvalue_)
        value_ = maxvalue_;
}

void TaskProgress::AddValue(quint64 value, quint64 steps)
{
    {
        value_ += value;
        steps_ += steps;
        if (maxvalue_ && value_ > maxvalue_)
            value_ = maxvalue_;
    }
}

unsigned int TaskProgress::getPercent() const
{
    if (value_ == 0)
        return 0;
    else if (maxvalue_ == 0)
        return 100;
    else
        return 100*value_/maxvalue_;
}

