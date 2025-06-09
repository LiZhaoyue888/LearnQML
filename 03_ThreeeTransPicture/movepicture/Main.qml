import QtQuick
import QtQuick.Layouts

Window {
    width: 640
    height: 420
    visible: true
    title: qsTr("Hello World")

    ClickableImage {
        x: 100
        y: 100
        width: 50
        height: 50
        source: "qrc:/image/fan.png"

        onClicked: {
            x += 10
        }
    }

    ClickableImage {
        id: square
        x: 200
        y: 100
        width: 70
        height: 70
        source: "qrc:/image/square.png"
        onClicked: {
            rotation += 30
        }
    }

    ClickableImage {
        anchors.top: square.top
        anchors.left: square.right
        width: 70
        height: 70
        source: "qrc:/image/triangle.png"
        onClicked: {
            scale += 0.1
        }
    }
}
