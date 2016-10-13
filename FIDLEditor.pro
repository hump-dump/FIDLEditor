#-------------------------------------------------
#
# Project created by QtCreator 2016-09-24T12:33:11
#
#-------------------------------------------------

lessThan(QT_MAJOR_VERSION, 5 ) {
   QT += core gui declarative
} else {
<<<<<<< .merge_file_a03488
   QT += core gui quick
=======
   QT += core gui qml quick widgets
>>>>>>> .merge_file_a16480
}

CONFIG += qt quickplugin c++11

QMAKE_CXXFLAGS += -std=c++11

<<<<<<< .merge_file_a03488
greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

=======
>>>>>>> .merge_file_a16480
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
    qml/landmeter/LMCompassText.qml \
    qml/landmeter/LMStatusBar.qml \
    qml/landmeter/LMLabel.qml \
    ServicePlugin/qmldir

RESOURCES +=
