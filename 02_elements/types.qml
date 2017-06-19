import QtQuick 2.0

Item {
    width: 1000
    height: 800

    Grid {
        id: grid
        x: 0
        y: 0
        width: 959
        height: 733
        rows:2
        Text {
            text: "TextEdit"
        }
        Text {
            text: "TextInput"
        }
        Text {
            text: "Image"
        }
        Text {
            text: "Rectangle"
        }
        Text {
            text: "Text"
        }
        TextEdit {
            id: textEdit
            width: 100
            height: 93
            text: qsTr("Text Edit")
            font.pixelSize: 12
        }
        TextInput {
            width: 100
            height: 20
            text: "change me"
        }

        Image {
            source: "logo.png"
        }



        Rectangle {
            color: "red"
            width:  200
            height: 200
            MouseArea {
                width: 200
                height: 200
                onClicked:console.log("click on rectangle")
            }
        }

        Text {
            text: "Hello World!"
        }






    }
}
