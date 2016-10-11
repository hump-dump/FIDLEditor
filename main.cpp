#include <QtGlobal>

#if QT_VERSION < 0x050000
   #include <QtGui/QApplication>
   #include <QtDeclarative>
   #include <QDeclarativeEngine>
   #include <QDeclarativeComponent>
   #include <QDeclarativeView>
#else
   #include <QApplication>
   #include <QQmlApplicationEngine>
   #include <QQmlContext>
#endif


#include "ServicePlugin/serviceplugin.h"

int main(int argc, char *argv[])
{
   QApplication a(argc, argv);

   qmlRegisterType<ServicePlugin>("ServicePlugin", 1, 0, "ServicePlugin");

#if QT_VERSION < 0x050000
   QDeclarativeEngine engine;
#else
   QQmlApplicationEngine engine;
#endif

#if QT_VERSION < 0x050000
   QDeclarativeComponent component( &engine, QUrl::fromLocalFile("landmeter/LandMeter.qml") );

   // QWidget *widget = qobject_cast<QWidget*>( component.create() );
   QDeclarativeView view;
   view.setSource( QUrl::fromLocalFile("landmeter/LandMeter.qml") );
   view.show();
#else
   engine.load( QUrl( "main.qml" ) );
#endif

   engine.rootContext()->setContextProperty( "ServicePlugin", ServicePlugin::instance() );

   return a.exec();
}
