import QtQuick 2.0

Item {
    id: item1
    width: 1000
    height: 800

    Rectangle {
        id: button
        height: 200
        width: 200
        color: "yellow"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        MouseArea {
            anchors.fill: parent
            //onClicked: //do something
        }
    }


    Rectangle {
        height: 200
        width: 200
        color: "#ff0000"
        x: 0
        y: 0
    }
    Rectangle {
        height: 200
        width: 200
        color: "#bb0000"
        x: 800
        y: 0
    }
    Rectangle {
        height: 200
        width: 200
        color: "#880000"
        x: 800
        y: 600
    }
    Rectangle {
        height: 200
        width: 200
        color: "#440000"
        x: 0
        y: 600
    }
}
