import QtQuick 2.0

Item {
    visible: true

    property double compassDirection: 0
    property var cardinalDirections: [ "N", "NE", "E", "SE", "S", "SW", "W", "NW" ]

    onCompassDirectionChanged: {
        console.log( compassDirection+ " -> " + cardinalDirections[Math.floor( compassDirection / ( 360 / cardinalDirections.length) )] );
    }

    function calculateCardinal( degree ) {
        return cardinalDirections[Math.floor( compassDirection / ( 360 / cardinalDirections.length) )];
    }

    LMCompassText {
        id: tDirection
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        height: gLandMeter.compassHeight;
        width: gLandMeter.compassWidth / 3
        borderVisible: true
        fontSize: gLandmeter.compassHeight - 15
        textColor: "#009000"
        textString: Number( compassDirection ).toFixed(1)
    }

    LMCompassText {
        id: tLeft
        anchors.verticalCenter: parent.verticalCenter
        anchors.right: tDirection.left

        height: gLandMeter.compassHeight;
        width: gLandMeter.compassWidth / 3
        fontSize: gLandmeter.compassHeight - 15
        textColor: "#005000"
        textString: calculateCardinal( compassDirection )
    }

    LMCompassText {
        id: tRight
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: tDirection.right

        height: gLandMeter.compassHeight;
        width: gLandMeter.compassWidth / 3
        fontSize: gLandmeter.compassHeight - 15
        textColor: "#005000"
        textString: Number( compassDirection + 30 ).toFixed(1)
    }

}
