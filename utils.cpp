#include "utils.h"

#include <QDebug>


QString size2human(size_t size, bool short_, bool useIso)
{
    QString result;
    if (short_)
    {
        //wersja skrócona

        if (size < 995)
            return QString::number((int) size % 1000) +"B";

        float dzielnik = (useIso) ? 1000.0 : 1024.0;

        char litery[5] = {' ', 'K', 'M', 'G', 'T'};
        int lid = 0;
        float fsize = (float)size;
        while (fsize >= 995) //995 zaokrąglane jest do 1000
        {
            ++lid;
            fsize = fsize / dzielnik;
        }

        int prec = fsize >= 100 ? 0 : fsize >= 10 ? 1 : 2;
        QString mantysa = QString(litery[lid]) ;
        if (useIso)
            mantysa += 'i';

        result = QString("%1%2B").arg(fsize, 0, 'f', prec).arg(mantysa);
    }
    else // wersja długa
    {
        if (size < 1000)
            return QString::number((int) size % 1000);

        QString number;
        while (size  >= 1)
        {
            number = QString("%1").arg((int)size % 1000);
            if (size >= 1000)
            {
                if ((size % 1000) < 100)
                    number = QString("0") + number;
                if ((size % 1000) < 10)
                    number = QString("0") + number;
            }
            size /= 1000;
            result = number + " " + result;
        }
        result.remove(-1,1);
    }
    return result;
}

#include "utils.h"


