#ifndef TASKPROGRESS_H
#define TASKPROGRESS_H

#include <QString>
#include <QDateTime>

#include "taskprogressmanager.h"

class TaskProgress
{
public:
    TaskProgress( TaskProgressManager * mgr, TaskProgressManager::TaskId tid, const QString & name, quint64 maxvalue);

    /** Zwieksza ilosc odwołań do funkcji w celu sprawdzenia
     * czasu zakończenia zadania
     **/

    ~TaskProgress();

    TaskProgress(const TaskProgress & copy);
    TaskProgress & operator=(const TaskProgress & copy);

    /**
     * @brief operator ++
     *Operator zwiększ o 1 tick;
     * @return
     */
    TaskProgress & operator++() { ++ticks_; return *this; }

    /**
     * @brief operator + do zwiększania wartość value
     * @param value wartość o ile należy zwiększyć
     * @return
     */
    TaskProgress operator+(quint64 value);
    TaskProgress & operator+=(quint64 value);

    /**
     * @brief setValue do ustawiania wartości value
     * @param value
     * @param steps
     */
    void setValue(quint64 value);
    void setValue(quint64 value, quint64 steps);

    /**
     * @brief AddValue metoda pododbna do SetValue, z tą różnicą,
     *że dodaje do wcześniejszych wartośći zamiast ustawiać
     * @param value
     * @param steps
     */
    void AddValue(quint64 value, quint64 steps);
    /**
     * @brief setItemName Ustawia nazwę wykonywanej podczynności
     * @param item
     */
    void setItemName(const QString & item) { item_ = item; }

    unsigned int getPercent() const ;


private:
    TaskProgressManager * mgr_; //zarzadca procesami
    TaskProgressManager::TaskId taks_id_; //identyfikator zadania
    QString name_; //nazwa zadania
    QString item_; //nazwa aktualnej wykonywanej podczynności
    quint64 value_; //aktualna wartość
    quint64 maxvalue_; //maksymalna wartość wartości
    quint64 steps_; //aktalna wartość kroku

    quint64 ticks_; //ilosc tickow
    QDateTime startTask_;
    QDateTime endTask_;

};

/** Klasa dla listy plików, rozszerzam o listę katatalogów
 **/
class TaskProgressDirsAndFiles : public TaskProgress
{
public:
    TaskProgressDirsAndFiles(TaskProgressManager * mgr_, TaskProgressManager::TaskId tid, const QString & name, quint64 maxvalue_) :
        TaskProgress(mgr_, tid, name, maxvalue_), dirs_(0)
    {  }

    void AddValue(quint64 value, quint64 steps, quint64 dirs)
    {
        TaskProgress::AddValue(value, steps);
        dirs_ += dirs;
    }


private:
    quint64 dirs_;
};


#endif // TASKPROGRESS_H
