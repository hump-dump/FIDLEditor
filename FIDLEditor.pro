#-------------------------------------------------
#
# Project created by QtCreator 2016-09-24T12:33:11
#
#-------------------------------------------------

QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = FIDLEditor
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    FIDLEForm/fidlform.cpp

HEADERS  += mainwindow.h \
    FIDLEForm/fidlform.h

FORMS    += mainwindow.ui \
    FIDLEForm/fidlform.ui
