import QtQuick 2.0
import QtQuick.Controls 1.3

Item {
    id: item1
    width: 1000
    height: 800
	
/*	ListModel {
            id: players
            ListElement {
                name: "Aumont"
                firstname: "Joey"
                score: 4 
                avater:"portrait1.jpg"
            }
            ListElement {
                name: "Folio"
                firstname: "Casimir"
                score: 9
                avater:"portrait4.jpg"
            }	
            ListElement {
                name: "Berthault"
                firstname: "Yann"
                score: 8
                avater:"portrait5.jpg"
            }
            ListElement {
                name: "Berges"
                firstname: "Gwennaelle"
                score: 3
                avater:"portrait2.jpg"
            }
            ListElement {
                name: "Laborde"
                firstname: "Suzanne"
                score: 6
                avater:"portrait3.jpg"
            }
            ListElement {
                name: "Germain"
                firstname: "Tessa"
                score: 3
                avater:"portrait6.jpg"
            }
       }*/
	

    property var list1: ["un","deux","trois"]
    property var list2: ["quatre","cinq","six"]

	ComboBox {
        id: choix
        model: list1
	}

    Rectangle{
        x: 200
        y: 200
        width: 200
        height: 200
        color: "red"
        MouseArea {
            anchors.fill: parent
            property bool oneOrTwo: true
            onClicked:{
                if(oneOrTwo)
                   choix.model = list2
                 else
                   choix.model = list1

                oneOrTwo=!oneOrTwo
            }

        }
    }
}
