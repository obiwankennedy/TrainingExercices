import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Item {
   id:root
   focus: true
   property int page: 0
   property int maxPage:0
   onPageChanged: {
       page=page>maxPage ? maxPage : page<0 ? 0 : page
   }

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

   Keys.onLeftPressed: --page
   Keys.onRightPressed: ++page
   signal rollDiceCmd(string cmd)
   MouseArea {
        anchors.fill:parent
        onClicked: root.focus = true
    }
       property real realscale: 1
    ListView{//
        id: _id_1list
        x:0
        y:0
        width:373*parent.realscale
        height:373*parent.realscale
        readonly property int maxRow:3
        interactive: count>maxRow?true:false;
        clip: true;
        model:players
        delegate: RowLayout {
	        height:124.333*parent.realscale
	        width: parent.width
            spacing: 3
            TextInput {//test
                text:name
                width:124.333*parent.realscale
                height:124.333*parent.realscale
            }
            TextInput {//e
                text: firstname
                width:124.333*parent.realscale
                height:124.333*parent.realscale
            }
            TextInput {//a
                text:score
                width:124.333*parent.realscale
                height:124.333*parent.realscale
            }
        }
     }
}


