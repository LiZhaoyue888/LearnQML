import QtQuick

Rectangle {
    width: 300
    height: 300
    id: root
    Text {
        x: 50
        y: 50
        height: width * 2
        id: thisLabel
        text: "thisLabel"
        color: focus ? "red" : "black"
        font.family: "Ubantu"
        font.pixelSize: 24
        focus: true
        onWidthChanged: {
            console.log("height", height)
        }

        Rectangle {
            anchors.fill: parent
            color: "yellow"
            z: parent.z - 1
        }

        KeyNavigation.tab: thatLabel

        Text {
            text: "thatLabel"
            id: thatLabel

            KeyNavigation.tab: thisLabel

            color: focus ? "red" : "black"
        }
    } // import QtQuick// Text {//     x: 40//     y: 40//     id: thisLabel//     height: 2 * width
    //     property int times: 24

    //     property alias anotherTimes: thisLabel.times

    //     text: "thisLabel" + anotherTimes

    //     font.family: "Ununtu"
    //     font.pixelSize: 24

    //     KeyNavigation.tab: thatLabel

    //     onHeightChanged: console.log('height:', height)

    //     focus: true

    //     color: focus ? "red" : "black"

    //     Text {
    //         x: 0
    //         y: 0
    //         focus: false
    //         id: thatLabel
    //         KeyNavigation.tab: thisLabel
    //         text: "thatLabel"
    //         color: focus ? "red" : "black"
    //     }
    // }
}
