import QtQuick
import QtQuick.Layouts
import QtQuick.Controls

Window {
    width: 200
    height: 200
    visible: true
    title: qsTr("Hello World")
    MyButton {
        text: "Start"
        onClicked: {
            label1.text = "点击了"
        }
    }

    Text {
        id: label1
        x: 50
        y: 50
        text: "还没点击"
        horizontalAlignment: text.alignment
    }
}
