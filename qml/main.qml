import QtQuick 2.0
import QtQuick.Window 2.0
import QtQuick.Controls 1.4
import QtQuick.Layouts 1.2

import "./landmeter" as LandMeter

import ServicePlugin 1.0

ApplicationWindow {
    id: id_MainWindow
    title: qsTr("FIDL Editor");
    width: 640
    height: 480
    visible: true

    Service {
        id: id_service
        onMessageChanged: {
            console.log(" onMessageChanged ")
        }
    }

    menuBar: MenuBar {
        Menu {
            id: id_MenuBar
            title: "File"

            signal signalNew
            MenuItem {
                text : "New..."
                onTriggered: {
                    id_service.message = "cool";

                }
            }

            MenuSeparator {

            }

            MenuItem {
                text : "Quit"
                onTriggered: close()
            }
        }
    }

//    Row {
//        Column {
//            Loader {
//                id: id_fileTree0
//                source: "filetree.qml"
//                visible: true
//            }
//            Loader {
//                id: id_fileTree1
//                source: "filetree.qml"
//                visible: true
//            }
//        }
        LandMeter.LandMeter {
            id: gLandMeter
            x: 10
            y: 10
            visible: true
        }
//    }
}
