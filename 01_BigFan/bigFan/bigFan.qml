import QtQuick

Window {
    width: 700
    height: 500
    visible: true
    title: qsTr("Hello World")

    Image {
        anchors.fill: parent
        id: background
        source: "../image/background.jpg"

        Image {
            anchors.bottom: background.bottom
            anchors.horizontalCenter: background.horizontalCenter
            id: plot
            source: "../image/plot.png"
        }

        Image {
            id: fan
            anchors.verticalCenter: plot.top
            anchors.verticalCenterOffset: 50
            anchors.horizontalCenter: plot.horizontalCenter
            width: 100
            height: 100
            source: "../image/fan.png"

            Behavior on rotation {
                //为特定的属性修改，提供动画
                NumberAnimation {
                    duration: 1000
                }
            }
        }
        MouseArea {
            anchors.fill: parent
            onClicked: fan.rotation += 360
        }
    }
}
