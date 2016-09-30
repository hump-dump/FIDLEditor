#include "serviceplugin.h"

ServicePlugin *ServicePlugin::pInstance = nullptr;

ServicePlugin::ServicePlugin(QQuickItem *parent):
    QQuickItem(parent)
{
    // By default, QQuickItem does not draw anything. If you subclass
    // QQuickItem to create a visual item, you will need to uncomment the
    // following line and re-implement updatePaintNode()

    // setFlag(ItemHasContents, true);
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
