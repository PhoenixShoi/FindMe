#include <QApplication>
#include <QQmlApplicationEngine>
#include "geolocation.h"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    GeoLocation *location = new GeoLocation();
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    return app.exec();
}
