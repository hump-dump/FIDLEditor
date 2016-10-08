#include "serviceplugin.h"

ServicePlugin *ServicePlugin::pInstance = nullptr;

ServicePlugin::ServicePlugin(QQuickItem *parent):
    QObject(parent)
//    QQuickItem(parent)
{
    startTimer(1000);
}

ServicePlugin::~ServicePlugin()
{
}

ServicePlugin * ServicePlugin::instance()
{
    if( nullptr == pInstance ) {
        pInstance = new ServicePlugin;
    }

    return pInstance;
}

void ServicePlugin::timerEvent( QTimerEvent * )
{
    qDebug() << "ServicePlugin::timerEvent";

    ++mTemperature;
    emit temperatureChanged();
    ++mPressure;
    emit pressureChanged();
}
