import QtQuick 2.5

Item {
    property string leftText: "Left"
    property string rightText: "Right"
    property int  fontSize: 20
    property string textColor: "#AAAAAA"

    Text {
        id: tLeftText
        anchors.verticalCenter:  parent.verticalCenter
        font.pixelSize: fontSize
        font.bold: true
        color: textColor
        text: leftText
    }

    Text {
        id: tRightText
        anchors.verticalCenter:  parent.verticalCenter
        anchors.left: tLeftText.right
        font.pixelSize: fontSize
        font.bold: true
        color: textColor
        text: rightText
    }
}
