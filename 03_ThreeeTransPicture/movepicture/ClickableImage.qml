import QtQuick

Image {
    id: root
    signal clicked
    anchors.margins: 2
    MouseArea {
        anchors.fill: parent
        onClicked: {
            root.clicked()
        }
    }
    Rectangle {
        anchors.fill: parent
        border.color: "red"
        color: "transparent"
        border.width: 1
        z: 1
    }
}
