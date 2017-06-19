import QtQuick 2.0

Item {
	//color: "#888888"
    Text {
        text: "Hello World!"
    }
	Timer {
        running: true
        interval: 1000
        repeat: true
        onTriggered: console.log("hello world!")
	}
}
