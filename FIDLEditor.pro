#-------------------------------------------------
#
# Project created by QtCreator 2016-09-24T12:33:11
#
#-------------------------------------------------

QT       += core gui qml

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = FIDLEditor
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    FIDLForm/fidlform.cpp

HEADERS  += mainwindow.h \
    FIDLForm/fidlform.h

FORMS    += mainwindow.ui \
    FIDLForm/fidlform.ui

DISTFILES += \
    qml/main.qml

RESOURCES += \
    qml.qrc
