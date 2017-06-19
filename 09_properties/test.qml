import QtQuick 2.0

Item {
    id: item1
	width: 1000
	height: 800

    Rectangle {
        x: 0
        width: 500
        height: 500
        opacity: 0.4
        color: "blue"
        Rectangle {
            width: 250
            height: 250
            color: "yellow"
        }
    }

    Rectangle {
        x: 500
        width: 500
        height: 500
        visible: false
        color: "green"
        Rectangle {
            width: 250
            height: 250
            color: "yellow"
        }
    }
}
