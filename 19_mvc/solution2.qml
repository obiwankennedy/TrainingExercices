import QtQuick 2.7
import QtQuick.Controls 2.0
Item {
    id: item1
    width: 1000
    height: 800
    focus: true
	ListModel {
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
       }
    Column {
        Repeater {
            model: players
            Row{
                Text {
                    text: name
                }
                Text {
                    text: firstname
                }
            }
        }
    }
}

