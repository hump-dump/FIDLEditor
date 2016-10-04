#ifndef SERVICEPLUGIN_H
#define SERVICEPLUGIN_H

#include <QQuickItem>

class ServicePlugin : public QQuickItem
{
    Q_OBJECT
    Q_DISABLE_COPY(ServicePlugin)

    Q_PROPERTY(QString message READ getMessage WRITE setMessage NOTIFY messageChanged)

    static ServicePlugin *pInstance;

    QString m_message;

public:
    static ServicePlugin * instance();

    ServicePlugin(QQuickItem *parent = 0);
    ~ServicePlugin();

    QString getMessage() const
    {
        return m_message;
    }

    void setMessage( const QString & message );

signals:
    void messageChanged();
};

#endif // SERVICEPLUGIN_H
