import QtQuick 2.0
import QtQuick.Layouts 1.3

Item {
  width: 1000
  height: 800
  // relatif au parent
  Text {
    text: "Hello World!"
  }
  Rectangle {
    color: "red"
    width:  200
    height: 200
    x:0
    y:0
    MouseArea {
      width: 200
      height: 200
      x: 100
      y: 100
      onClicked:console.log("click on rectangle")
    }
  }

  //layout
  GridLayout {
    id: grid
    x: 373
    y: 0
    columns: 3
    Rectangle { color: "red"; width: 50; height: 50 }
    Rectangle { color: "green"; width: 20; height: 50 }
    Rectangle { color: "blue"; width: 50; height: 20 }
    Rectangle { color: "cyan"; width: 50; height: 50 }
    Rectangle { color: "magenta"; width: 10; height: 10 }

  }
  //positionner
  Grid {
    x: 535
    y: 3
    columns: 3
    spacing: 2
    Rectangle { color: "red"; width: 50; height: 50 }
    Rectangle { color: "green"; width: 20; height: 50 }
    Rectangle { color: "blue"; width: 50; height: 20 }
    Rectangle { color: "cyan"; width: 50; height: 50 }
    Rectangle { color: "magenta"; width: 10; height: 10 }
  }

  //ancre
  Image {
    source: "logo.png"
    x: 200
    y: 0
  }

  TextInput {
    anchors.bottom: parent.bottom
    anchors.left: parent.left
    width: 250
    height: 20
    text: "change me"
  }
}
