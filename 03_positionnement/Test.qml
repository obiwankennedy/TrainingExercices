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
/*
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
=======
Flickable {
    contentHeight: column.height
    contentWidth: column.width
    ColumnLayout {
        id: column
        Text {
            text: "Positionnement en Z"
        }
        RowLayout {
            implicitWidth: childrenRect.width
            implicitHeight: childrenRect.height
            //Normal
            Item {
                implicitWidth: childrenRect.width
                implicitHeight: childrenRect.height
                Rectangle {
                    id: up
                    color: "red"
                    width:  200
                    height: 200
                }
                Rectangle {
                    id: down
                    color: "yellow"
                    width:  200
                    height: 200
                }
            }
            //Force red devant
            Item {
                implicitWidth: childrenRect.width
                implicitHeight: childrenRect.height
                Rectangle {
                    id: up1
                    color: "red"
                    z: 1
                    width:  200
                    height: 200
                }
                Rectangle {
                    id: down1
                    color: "yellow"
                    width:  200
                    height: 200
                }
            }
        }
        Text {
            text: "Relatif au parent"
        }
        Item {
            implicitWidth: childrenRect.width
            implicitHeight: childrenRect.height+50
            Rectangle {
                height: 200
                width:  200
                color: "red"
                Rectangle {
                    x: 50
                    y: 50
                    width: 200
                    height: 200
                    color: "yellow"
                }
            }
        }
        Text {
            text: "Les ancres"
        }
        RowLayout {
            implicitWidth: childrenRect.width
            implicitHeight: childrenRect.height
            Item {
                implicitWidth: childrenRect.width
                implicitHeight: childrenRect.height
                Rectangle {
                    id: first
                    color: "red"
                    width:  200
                    height: 200
                }
                Rectangle {
                    anchors.fill: first
                    color: "yellow"
                }
            }
            Item {
                implicitWidth: childrenRect.width
                implicitHeight: childrenRect.height
                Rectangle {
                    id: second
                    color: "red"
                    width:  200
                    height: 200
                }
                Rectangle {
                    anchors.top: second.top
                    anchors.left: second.left
                    width:  50
                    height: 50
                    color: "yellow"
                }
            }
            Item {
                implicitWidth: childrenRect.width
                implicitHeight: childrenRect.height
                Rectangle {
                    id: third
                    color: "red"
                    width:  200
                    height: 200
                }
                Rectangle {
                    anchors.centerIn: third
                    width:  50
                    height: 50
                    color: "yellow"
                }
            }
            Item {
                implicitWidth: childrenRect.width
                implicitHeight: childrenRect.height
                Rectangle {
                    id: fourth
                    color: "red"
                    width:  200
                    height: 200
                }
                Rectangle {
                    anchors.horizontalCenter: fourth.horizontalCenter
                    anchors.bottom: fourth.bottom
                    width:  50
                    height: 50
                    color: "yellow"
                }
            }
            Item {
                implicitWidth: childrenRect.width
                implicitHeight: childrenRect.height
                Rectangle {
                    id: fifth
                    color: "red"
                    width:  200
                    height: 200
                }
                Rectangle {
                    anchors.top: fifth.top
                    anchors.left: fifth.left
                    anchors.right: fifth.horizontalCenter
                    anchors.bottom: fifth.verticalCenter
                    color: "yellow"
                }
            }
            Item {
                implicitWidth: childrenRect.width
                implicitHeight: childrenRect.height
                Rectangle {
                    id: sixth
                    color: "red"
                    width:  200
                    height: 200
                }
                Rectangle {
                    anchors.top: sixth.top
                    anchors.topMargin: 10
                    anchors.left: sixth.left
                    anchors.leftMargin: 10
                    anchors.right: sixth.horizontalCenter
                    anchors.rightMargin: 10
                    anchors.bottom: sixth.verticalCenter
                    anchors.bottomMargin: 10
                    color: "yellow"
                }
            }
        }
        Text {
            text: "Positionner"
        }
        Grid {
            id: grid
            columns: 3
            spacing: 2
            Rectangle { color: "red"; width: 150; height: 150 }
            Rectangle { color: "green"; width: 100; height: 150 }
            Rectangle { color: "blue"; width: 150; height: 60 }
            Rectangle { color: "cyan"; width: 150; height: 150 }
            Rectangle { color: "magenta"; width: 80; height: 80 }
        }
        Text {
            text: "Layout"
        }
        GridLayout {
            id: gridlayout
            columns: 3
            Rectangle { color: "red"; width: 150; height: 150 }
            Rectangle { color: "green"; width: 100; height: 150 }
            Rectangle { color: "blue"; width: 150; height: 60 }
            Rectangle { color: "cyan"; width: 150; height: 150 }
            Rectangle { color: "magenta"; width: 80; height: 80 }
        }
    }
*/
}
