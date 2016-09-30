#include <QApplication>
#include <QQmlApplicationEngine>

#include "ServicePlugin/serviceplugin.h"

int main(int argc, char *argv[])
{
   QApplication a(argc, argv);

   qmlRegisterType<ServicePlugin>("ServicePlugin", 1, 0, "Service");

   QQmlApplicationEngine engine;


   engine.load( QUrl(QStringLiteral("qrc:qml/main.qml")) );


   return a.exec();
}
