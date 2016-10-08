#include <QApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "ServicePlugin/serviceplugin.h"

int main(int argc, char *argv[])
{
   QApplication a(argc, argv);

   qmlRegisterType<ServicePlugin>("ServicePlugin", 1, 0, "ServicePlugin");

   QQmlApplicationEngine engine;

   engine.rootContext()->setContextProperty( "ServicePlugin", ServicePlugin::instance() );

   engine.load( QUrl(QStringLiteral("main.qml")) );

   return a.exec();
}
