import QtQuick 2.0

Item {
    id: landmeter

    property int itemWidth: 320
    property int itemHeight: 240
    property int compassHeight: 40

    width: itemWidth
    height: itemHeight
    visible: true


    Rectangle {
        width: parent.width
        height: parent.height
        visible: parent.visible
        color: "black"
    }

    LMCompass {
        x: 2
        y: itemHeight-compassHeight - 2
        width: parent.width - 4
        height: compassHeight
    }

//    Rectangle {
//        y: parent.height
//        x: 100
//        width:150
//        height:150
//        radius: height/2
//    }

}

