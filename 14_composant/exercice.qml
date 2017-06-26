import QtQuick 2.0

Item {
    id: item1
    width: 600
    height: 400


    Column {
       anchors.left: parent.left
       anchors.top: parent.top
       spacing: 3
        Image {
            id:rouge
            width: 200
            fillMode: Image.PreserveAspectFit
            source: "DSCN2335.JPG"
        }
        Image {
            id:orange
            width: 200
            fillMode: Image.PreserveAspectFit
            source: "DSCN2405.JPG"
        }
        Image {
            id: vert
            width: 200
            fillMode: Image.PreserveAspectFit
            source: "glacier.png"
        }
    }
}
