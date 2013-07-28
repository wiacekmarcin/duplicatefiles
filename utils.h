#ifndef UTILS_H
#define UTILS_H

#include <QString>

/**
 * @brief size2human Funkcja ta zamienia liczbę na stringa dodając co 3 cyfry spację
 * lub pokazuje tylko 3 największe cyfry z odpowiednim przyrostkiem M (Mi)
 * @param size - rozmiar pliku lub jakieś innej liczby
 * @param short_ - czy użyc skróconej wersji
 * @param sueIso - czy uzyć jednostek z standardu ISO
 * @return
 */
QString size2human(size_t size, bool short_ = false, bool useIso = false);

#endif // UTILS_H
