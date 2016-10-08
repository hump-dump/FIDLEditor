#-------------------------------------------------
#
# Project created by QtCreator 2016-09-24T12:33:11
#
#-------------------------------------------------

QT       += core gui quick qml

CONFIG += qt quickplugin c++11

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = FIDLEditor
TEMPLATE = app


SOURCES += \
    ServicePlugin/serviceplugin.cpp \
    main.cpp

HEADERS += \
ServicePlugin/serviceplugin.h

DISTFILES += \
    qml/main.qml \
    qml/filetree.qml \
    qml/landmeter/LandMeter.qml \
    qml/landmeter/qmldir \
    qml/landmeter/LMCompass.qml \
    qml/landmeter/LMCompassText.qml

RESOURCES +=
