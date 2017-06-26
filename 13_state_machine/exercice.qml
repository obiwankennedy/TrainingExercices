import QtQuick 2.0

Item {
    id: item1
    width: 1000
    height: 800

    Rectangle {
        id: button
        height: 200
        width: 200
        color: "#118811"
        radius: 5
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        Text {
            anchors.fill: parent
            text: "start"
           horizontalAlignment:Text.AlignHCenter
           verticalAlignment:Text.AlignVCenter
        }

        MouseArea {
            anchors.fill: parent
            onPressed: button.scale = 0.8
            onClicked: timer.start()
            onReleased: button.scale = 1.0
        }
    }
    Timer {
        id: timer
        interval: 1000
        onTriggered: {
            console.log("timer trigged")
        }
        repeat: true
    }

    Column {
       anchors.left: parent.left
       anchors.top: parent.top
        Rectangle {
            id:rouge
            height: 200
            width: 200
            radius: 100
            color: "#ff0000"
        }
        Rectangle {
            id:orange
            height: 200
            width: 200
            radius: 100
            color: "orange"
        }
        Rectangle {
            id: vert
            height: 200
            width: 200
            radius: 100
            color: "#00ff00"
        }
    }
}
