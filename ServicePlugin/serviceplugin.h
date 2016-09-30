#ifndef SERVICEPLUGIN_H
#define SERVICEPLUGIN_H

#include <QQuickItem>

class ServicePlugin : public QQuickItem
{
    Q_OBJECT
    Q_DISABLE_COPY(ServicePlugin)

public:
    ServicePlugin(QQuickItem *parent = 0);
    ~ServicePlugin();
};

#endif // SERVICEPLUGIN_H
