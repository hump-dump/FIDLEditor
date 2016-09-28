import QtQuick 2.0
import QtQuick.Window 2.0
import QtQuick.Controls 1.2

ApplicationWindow {
    id: id_MainWindow
    title: qsTr("FIDL Editor");
    width: 640
    height: 480
    visible: true
    signal singalNew

    menuBar: MenuBar {
        Menu {
            id: id_MenuBar
            title: "File"

            signal signalNew
            MenuItem {
                text : "New..."
                onTriggered:id_MainWindow.signalNew
            }

            MenuSeparator {

            }

            MenuItem {
                text : "Quit"
                onTriggered: close()
            }
        }
    }
}

