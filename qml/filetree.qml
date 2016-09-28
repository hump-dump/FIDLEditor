import QtQuick 2.0

Item {
    id: fileTree
    layer.enabled: true
    width: 300
    height: 100

    Component.onCompleted: {
        console.log( "Component.onCompleted" );
    }

    Rectangle {
        id: id_rectangle
        anchors.fill: parent
        color: "red"
    }

    Text {
        id: id_text
        color: "#000000"
        font.family: "Courier New"
        style: Text.Raised
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 10
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            if( true == id_Timer.running ) {
                id_rectangle.color="red";
                id_Timer.stop();
            } else {
                id_rectangle.color="green";
                id_Timer.start();
            }


        }
    }

    Timer {
        id: id_Timer
        interval: 1000
        repeat: true
        triggeredOnStart: true
        running: false
        onTriggered: {
            id_text.text = Date().toString();
        }
    }
}
