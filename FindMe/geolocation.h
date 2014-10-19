#ifndef GEOLOCATION_H
#define GEOLOCATION_H
#include <QGeoPositionInfoSource>

class GeoLocation : public QObject
{

    QGeoPositionInfoSource *fm_geoPositionInfo;
private slots:
    void positionUpdated(const QGeoPositionInfo &info);
public:
    GeoLocation();

};

#endif // GEOLOCATION_H
