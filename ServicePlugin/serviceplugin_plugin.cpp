#include "serviceplugin_plugin.h"
#include "serviceplugin.h"

#include <qqml.h>

void ServicePluginPlugin::registerTypes(const char *uri)
{
    // @uri com.fidleditor.serviceplugin
    qmlRegisterType<ServicePlugin>(uri, 1, 0, "ServicePlugin");
}

