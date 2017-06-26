import QtQuick 2.0

Item {
    id: item1
    width: 400
    height: 400

    Row {
        id: controls
        Column {
            spacing: 3
            Row {
                spacing: 3
                Text {
                    text: "Minumum:"
                    horizontalAlignment:Text.AlignHCenter
                    verticalAlignment:Text.AlignVCenter
                }
                TextEdit {
                    id: minValue
                    width: 100
                }
            }
            Row {
                spacing: 3
                Text {
                    text: "Maximum:"
                    horizontalAlignment:Text.AlignHCenter
                    verticalAlignment:Text.AlignVCenter
                }
                TextEdit {
                    id: maxValue
                    width: 100
                }
            }
        }
        Rectangle {
            id: button
            height: 40
            width: 200
            color: "#880011"
            radius: 20
            Text {
                text: "Générer"
                anchors.fill: parent
                horizontalAlignment:Text.AlignHCenter
                verticalAlignment:Text.AlignVCenter
            }
            MouseArea {
                anchors.fill: parent
                //onClicked: //do something
                onPressed: parent.scale = 0.8
                onReleased: parent.scale = 1.0
            }
        }
     }
    Text {
        id: display
        anchors.top: controls.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        horizontalAlignment:Text.AlignHCenter
        verticalAlignment:Text.AlignVCenter
        text: "resultat"

    }

}
