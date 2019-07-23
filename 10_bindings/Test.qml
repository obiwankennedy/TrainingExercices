import QtQuick 2.0
import QtQuick.Layouts 1.3

Item {
    id: item1
	width: 1000
	height: 800

    property int angle: 0
    property int marge: 20
    function computeAngle()
    {
        return angle;
    }

    Image {
        id:image1
         source: "logo.png"
         anchors.left: parent.left
         anchors.verticalCenter: parent.verticalCenter
         anchors.leftMargin: marge
         rotation: angle
    }



        Rectangle {
            color: "red"
            anchors.bottom: image1.top
            anchors.bottomMargin: 0
            anchors.horizontalCenter: parent.horizontalCenter
            width:  200
            height: 200

            Text {
                anchors.fill: parent
                text: "+"
                fontSizeMode: Text.Fit
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                font.pointSize: 100
            }
            MouseArea {
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.fill: parent
                onClicked:angle+=5
            }
        }
        Rectangle {
            color: "red"
            anchors.top: image1.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.topMargin: 0
            width:  200
            height: 200
            Text {
                anchors.fill: parent
                text: "-"
                fontSizeMode: Text.Fit
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                font.bold: true
                font.pointSize: 100
            }
            MouseArea {
                anchors.rightMargin: 0
                anchors.bottomMargin: 0
                anchors.leftMargin: 0
                anchors.topMargin: 0
                anchors.fill: parent
                onClicked:angle-=5
            }
        }


   Image {
       id:image2
		source: "logo.png"
        anchors.right: parent.right
        anchors.rightMargin: marge
        anchors.verticalCenter: parent.verticalCenter
        rotation: computeAngle()
   }

}
