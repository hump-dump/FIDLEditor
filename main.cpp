#include "mainwindow.h"
#include <QApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
   QApplication a(argc, argv);

   QQmlApplicationEngine engine;
   engine.load( QUrl(QStringLiteral("qrc:qml/main.qml")) );

   return a.exec();
}
