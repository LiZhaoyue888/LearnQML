import QtQuick

Item {
    id: button
    property alias text: label.text
    signal clicked
    Rectangle {
        x: 50
        y: 10

        width: 50
        height: 20
        color: "gray"
        border.color: "blue"
        Text {
            id: label
            text: "快点点击"
            anchors.centerIn: parent
        }
        MouseArea {
            anchors.fill: parent
            onClicked: {
                button.clicked()
            }
        }
    }
}
