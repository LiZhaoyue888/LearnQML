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
            width: 200
            height: 300

            anchors.bottom: background.bottom
            anchors.horizontalCenter: background.horizontalCenter

            id: plot
            source: "../image/plot.png"
        }

        Image {
            id: fan
            x: plot.x + 50
            y: plot.y

            width: 100
            height: 100
            source: "../image/fan.png"

            Behavior on rotation {

                //为特定的属性修改，提供动画
                NumberAnimation {
                    duration: 1000
                }
            }

            MouseArea {
                anchors.fill: fan
                onClicked: {
                    fan.rotation += 360
                }
                drag.target: parent
            }
        }
    }
}
