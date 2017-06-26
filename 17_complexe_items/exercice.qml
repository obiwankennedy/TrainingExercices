import QtQuick 2.0
import QtQuick.Window 2.0
import QtQuick.Controls 2.1
import QtQuick.Controls 1.4 as QQC
import QtQuick.Layouts 1.1

ApplicationWindow {
    id: item1
    width: 1000
    height: 800
    visible: true

    header: ToolBar {
        RowLayout {
              anchors.fill: parent
              ToolButton {
                  text: qsTr("\u25C0 %1").arg(Qt.application.name)
                  enabled: stack.depth > 1
                  onClicked: stack.pop()
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
              initialItem: page
          }

    QQC.ScrollView {
        id: page
        implicitWidth: 640
        implicitHeight: 200

        horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff

        Item {
            id: content

            width: Math.max(page.viewport.width, grid.implicitWidth + 2 * grid.rowSpacing)
            height: Math.max(page.viewport.height, grid.implicitHeight + 2 * grid.columnSpacing)

            GridLayout {
                id: grid

                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: grid.rowSpacing
                anchors.rightMargin: grid.rowSpacing
                anchors.topMargin: grid.columnSpacing

                columns: page.width < page.height ? 1 : 2

                GroupBox {
                    title: "Button"
                    Layout.fillWidth: true
                    Layout.columnSpan: grid.columns
                    RowLayout {
                        anchors.fill: parent
                        QQC.Button { text: "OK"; isDefault: true }
                        Button { text: "Cancel" }
                        Item { Layout.fillWidth: true }
                        QQC.Button {
                            text: "Attach"
                            menu: QQC.Menu {
                                QQC.MenuItem { text: "Image" }
                                QQC.MenuItem { text: "Document" }
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
                    ColumnLayout {
                        anchors.fill: parent
                        QQC.ExclusiveGroup { id: radioGroup }
                        QQC.RadioButton { text: "Portrait"; exclusiveGroup: radioGroup }
                        QQC.RadioButton { text: "Landscape"; exclusiveGroup: radioGroup }
                        QQC.RadioButton { text: "Automatic"; exclusiveGroup: radioGroup; checked: true }
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

    QQC.ScrollView {
        id: page2
        visible: false
        implicitWidth: 640
        implicitHeight: 400

        horizontalScrollBarPolicy: Qt.ScrollBarAlwaysOff

        Item {
            id: content2

            width: Math.max(page.viewport.width, column.implicitWidth + 2 * column.spacing)
            height: Math.max(page.viewport.height, column.implicitHeight + 2 * column.spacing)

            ColumnLayout {
                id: column

                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.margins: column.spacing

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
                            //editable: true
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
                        QQC.SpinBox { decimals: 2; Layout.fillWidth: true }
                    }
                }
            }
        }
    }
}
