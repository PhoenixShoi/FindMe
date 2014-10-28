#include "geolocation.h"
#include <QDebug>

GeoLocation::GeoLocation()
{
    fm_geoPositionInfo = QGeoPositionInfoSource::createDefaultSource(this);
    if(fm_geoPositionInfo)
    {
        fm_geoPositionInfo->setPreferredPositioningMethods(QGeoPositionInfoSource::AllPositioningMethods);

        connect(fm_geoPositionInfo, SIGNAL(positionUpdated(QGeoPositionInfo)),
                            this, SLOT(positionUpdated(QGeoPositionInfo)));
        fm_geoPositionInfo->startUpdates();

    }
}
void positionUpdated(QGeoPositionInfo geoPositionInfo) {
    qDebug()<<"Position Updated: Lat:" <<geoPositionInfo.coordinate().latitude()<<" Long: "<<geoPositionInfo.coordinate().longitude();
}
