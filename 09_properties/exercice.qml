import QtQuick 2.0
import QtQuick.Layouts 1.3

Item {
    id: item1
	width: 1000
	height: 800
    property string text: ""

    onTextChanged: {
        console.log(text)
    }

    Rectangle {
        x: 0
        width: 500
        height: 500
        opacity: 0.4
        color: "blue"
        MouseArea {
            anchors.fill:parent
            onClicked: item1.text = "Bouton bleu"
        }
    }

    Rectangle {
        x: 500
        width: 500
        height: 500

        color: "green"
        MouseArea {
            anchors.fill:parent
            onClicked: item1.text = "Bouton vert"
        }
    }
}
