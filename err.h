#ifndef ERR_H
#define ERR_H

#include <QException>

class Sha1Exception : public QException
{
public:
    Sha1Exception(const QString & msg) throw()
      :  msg_(msg)
    {}

    virtual ~Sha1Exception() throw() {}

    void raise() const { throw *this; }
    Sha1Exception *clone() const { return new Sha1Exception(*this); }

private:
    QString msg_;
};

#endif // ERR_H
