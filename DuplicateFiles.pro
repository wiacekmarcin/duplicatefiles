#-------------------------------------------------
#
# Project created by QtCreator 2013-05-25T09:57:36
#
#-------------------------------------------------

QT       += core gui widgets

TARGET = DuplicateFiles
TEMPLATE = app


SOURCES += main.cpp\
            dpfile.cpp \
            dpdir.cpp \
            utils.cpp \
            taskprogress.cpp \
            taskprogressmanager.cpp \
            mainwindow.cpp \
    dptest.cpp

HEADERS  += dpfile.h \
            dpdir.h \
            err.h \
            utils.h \
            taskprogress.h \
            taskprogressmanager.h \
            mainwindow.h \
    dptest.h

FORMS    += mainwindow.ui

OTHER_FILES += \
    test.pro
