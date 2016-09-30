#ifndef SERVICEPLUGIN_PLUGIN_H
#define SERVICEPLUGIN_PLUGIN_H

#include <QQmlExtensionPlugin>

class ServicePluginPlugin : public QQmlExtensionPlugin
{
    Q_OBJECT
    Q_PLUGIN_METADATA(IID "org.qt-project.Qt.QQmlExtensionInterface")

public:
    void registerTypes(const char *uri);
};

#endif // SERVICEPLUGIN_PLUGIN_H
