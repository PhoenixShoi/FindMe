#include <QApplication>
#include <QQmlApplicationEngine>
#include "geolocation.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    GeoLocation *location = new GeoLocation();
    return app.exec();
}
