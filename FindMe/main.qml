import QtQuick 2.3
import QtQuick.Controls 1.2
import QtLocation 5.3
import QtPositioning 5.3

ApplicationWindow {
    visible: true
    width: 1024
    height: 768
    title: qsTr("FindMe")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }
    }


    Plugin {
        id: plugin
        preferred: [ "osm"]

    }
    Map{
        id: map
        anchors.fill: parent
        plugin: plugin

        center  {
            latitude: -27
            longitude: 153
        }
        zoomLevel: 10
        minimumZoomLevel: 3


    }
}
