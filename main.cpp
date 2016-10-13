#include <QtGlobal>

#if QT_VERSION < 0x050000
   #include <QtGui/QApplication>
   #include <QtDeclarative>
   #include <QDeclarativeEngine>
   #include <QDeclarativeComponent>
   #include <QDeclarativeView>
#else
   #include <QQmlEngine>
   #include <QApplication>
   #include <QtQml>
   #include <QQmlEngine>
   #include <QQmlApplicationEngine>
   #include <QQmlContext>
#endif

#include "ServicePlugin/serviceplugin.h"

int main(int argc, char *argv[])
{
   QApplication a(argc, argv);

#if QT_VERSION < 0x050000
   QDeclarativeView *view = new QDeclarativeView;
   view->engine()->rootContext()->setContextProperty( "ServicePlugin", ServicePlugin::instance() );
   view->setSource( QUrl::fromLocalFile("main.qml") );

<<<<<<< .merge_file_a09300
   view->show();
   // QDeclarativeComponent component( &engine,  );
=======
   qmlRegisterType<ServicePlugin>("ServicePlugin", 1, 0, "ServicePlugin");

#if QT_VERSION < 0x050000
   QDeclarativeComponent component( &engine, QUrl::fromLocalFile("landmeter/LandMeter.qml") );
>>>>>>> .merge_file_a19836

   // QWidget *widget = new QWidget;// = qobject_cast<QWidget*>( component.create() );
   // widget->show();
#else
   QQmlApplicationEngine engine;
   engine.load( QUrl( "main.qml" ) );
   engine.rootContext()->setContextProperty( "ServicePlugin", ServicePlugin::instance() );
#endif

   return a.exec();
#if QT_VERSION < 0x050000
   delete view;
#endif
}
