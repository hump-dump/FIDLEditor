// import QtQuick 1.0
import QtQuick 2.5

Item {
    property double temperature: 0.0
    property double pressure: 0.0
    Rectangle {
        width: parent.width
        height: parent.height
        color: "#202020"
    }

    LMLabel {
        id: lTemp
        anchors.verticalCenter:  parent.verticalCenter
        width: parent.width / 2
        fontSize: parent.height - 15
        leftText: "Temp:"
        rightText: Number( temperature ).toFixed(1)
    }
    LMLabel {
        id: lPressure
        anchors.verticalCenter:  parent.verticalCenter
        width: parent.width / 2
        anchors.left: lTemp.right
        fontSize: parent.height - 15
        leftText: "Pres:"
        rightText: Number( pressure ).toFixed()
    }
}
