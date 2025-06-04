import QtQuick
import QtQuick.Controls.Basic
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    MenuBar {
        Menu {
            title: qsTr("打开")
            Action {
                text: qsTr("&New...")
                checkable: true
            }
            Action {
                text: qsTr("&Open...")
            }
            Action {
                text: qsTr("&Save")
                checkable: true
                checked: true
            }
            MenuSeparator //菜单分割组件
            {
                contentItem: Rectangle {
                    implicitWidth: 200
                    implicitHeight: 1
                    color: "#21be2b"
                }
            }
            Action {
                text: qsTr("&Quit")
            }
        }
        Menu {
            title: qsTr("关于")
            contentItem: Rectangle {
                width: 0
                height: 0
            }
        }
        Menu {
            title: qsTr("配置")
        }

        delegate: MenuBarItem {
            id: menuBarItem

            contentItem: Text {
                text: menuBarItem.text
                font: menuBarItem.font
                opacity: enabled ? 1.0 : 0.3
                color: "#000000"
                horizontalAlignment: Text.AlignLeft
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
        }
        background: Rectangle {
            color: "#FFFFFF"
        }
    }
    ColumnLayout {
        anchors.centerIn: parent
        spacing: 10
        RowLayout {
            spacing: 10
            TextField {
                id: input1
                placeholderText: "Input A"
            }
            ComboBox {
                id: operatorBox
                model: ["+", "-", "*", "/"]
                width: 60
            }

            TextField {
                id: input2
                placeholderText: "Imput B"
            }
        }
        RowLayout {
            spacing: 20
            Item {
                Layout.fillWidth: true
            }
            Button {
                text: "="
                width: 40

                onClicked: {
                    var a = parseInt(input1.text)
                    var b = parseInt(input2.text)

                    // 直接调用 C++ 函数并获取返回值
                    var greeting = Calculator.add(a, b)
                    console.log("Return value from Greet:", greeting)
                }
            }

            Item {
                width: 50
            }

            Label {
                text: "Resule:"
            }
            Label {
                text: "--"
            }
            Item {
                Layout.fillWidth: true
            }

            //方便调试，给布局加边框
            Rectangle {
                anchors.fill: parent
                color: "transparent"
                border.color: "red" // 边框颜色
                border.width: 1 // 边框宽度
                z: -1 // 确保边框在内容下方
            }
        }
    }
}
