import QtQuick 2.0
import QtQuick.Controls 2.1


Item {
    id: item1
    width: 640
    height: 480
    Row {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 20
        spacing: 20

        Rectangle {
            id: minus
            color:"grey"
            width: 20
            height: 20
            Text {
                text: "-"
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter
            }
            MouseArea {
                anchors.fill: parent
//                onClicked:
            }
        }
        Rectangle {
            id: plus
            color:"green"
            width: 20
            height: 20
            Text {
                text: "+"
                anchors.fill: parent
                horizontalAlignment: Text.AlignHCenter

            }
            MouseArea {
                anchors.fill: parent
//               onClicked: 
            }
        }
    }

   Rectangle {
       id: area
       anchors.horizontalCenter: parent.horizontalCenter
       anchors.verticalCenter: parent.verticalCenter
       color: "red"
       width: 10
       height: 10
   }

}
