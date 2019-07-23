import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.3

ApplicationWindow {
    id: item1
    width: 800
    height: 800
    visible: true

    header: ToolBar {
        RowLayout {
            anchors.fill: parent
            ToolButton {
                text: qsTr("File")
                onClicked: menuFile.open()
                Menu {
                    id: menuFile
                    y: parent.height
                    MenuItem {
                        text: qsTr("New...")
                    }
                    MenuItem {
                        text: qsTr("Open...")
                    }
                    MenuItem {
                        text: qsTr("Save")
                    }
                }
            }
            Item { Layout.fillWidth: true }
            Switch {
                checked: true
                text: qsTr("Wifi:")
            }
        }
    }

    StackView {
        id: stack
        anchors.fill: parent
        initialItem: page1
    }

    Component {
        id: page1
        ScrollView {
            id: scrollPage1
            ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
            GridLayout {
                id: grid
                columns: scrollPage1.width < scrollPage1.height ? 1 : 2
                width: scrollPage1.width
                GroupBox {
                    title: "Button"
                    Layout.fillWidth: true
                    Layout.columnSpan: grid.columns
                    RowLayout {
                        anchors.fill: parent
                        implicitWidth: 8000
                        Button { text: "OK"; }
                        Button { text: "Cancel" }
                        Item { Layout.fillWidth: true }
                        Button {
                            text: "Attach"
                            onClicked: menu.open()
                            Menu {
                                id: menu
                                y: parent.height
                                MenuItem { text: "Image" }
                                MenuItem { text: "Document" }
                            }
                        }
                    }
                }

                GroupBox {
                    title: "CheckBox"
                    Layout.fillWidth: true
                    ColumnLayout {
                        anchors.fill: parent
                        CheckBox { text: "E-mail"; checked: true }
                        CheckBox { text: "Calendar"; checked: true }
                        CheckBox { text: "Contacts" }
                    }
                }

                GroupBox {
                    title: "RadioButton"
                    Layout.fillWidth: true
                    ButtonGroup { id: radioGroup ; buttons: columnbis.children}
                    ColumnLayout {
                        id: columnbis
                        anchors.fill: parent
                        RadioButton { text: "Portrait";  }
                        RadioButton { text: "Landscape";  }
                        RadioButton { text: "Automatic"; checked: true }
                    }
                }

                GroupBox {
                    title: "Switch"
                    Layout.fillWidth: true
                    Layout.columnSpan: grid.columns
                    ColumnLayout {
                        anchors.fill: parent
                        RowLayout {
                            Label { text: "Wi-Fi"; Layout.fillWidth: true }
                            Switch { checked: true }
                        }
                        RowLayout {
                            Label { text: "Bluetooth"; Layout.fillWidth: true }
                            Switch { checked: false }
                        }
                    }
                }

            }
        }
    }

    Component {
        id: page2
        ScrollView {
            ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
            ColumnLayout {
                id: column
                width: scrollPage2.width
                GroupBox {
                    title: "TextField"
                    Layout.fillWidth: true
                    ColumnLayout {
                        anchors.fill: parent
                        TextField { placeholderText: "..."; Layout.fillWidth: true; z: 1 }
                        TextField { placeholderText: "Password"; echoMode: TextInput.Password; Layout.fillWidth: true }
                    }
                }

                GroupBox {
                    title: "ComboBox"
                    Layout.fillWidth: true
                    ColumnLayout {
                        anchors.fill: parent
                        ComboBox {
                            model: Qt.fontFamilies()
                            Layout.fillWidth: true
                        }
                        ComboBox {
                            model: ListModel {
                                id: listModel
                                ListElement { text: "Apple" }
                                ListElement { text: "Banana" }
                                ListElement { text: "Coconut" }
                                ListElement { text: "Orange" }
                            }

                            Layout.fillWidth: true
                        }
                    }
                }

                GroupBox {
                    title: "SpinBox"
                    Layout.fillWidth: true
                    ColumnLayout {
                        anchors.fill: parent
                        SpinBox { value: 99; Layout.fillWidth: true; z: 1 }
                    }
                }
            }
        }
    }
}
