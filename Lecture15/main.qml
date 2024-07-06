import QtQuick 2.15
import QtQuick.Window 2.15


Rectangle {
    width: 640
    height: 640
    color: "blue"
    focus: true  // ensures the rectangle can receive key events which can help in making the rectangle come in focus ......

    Image {
        id: rocket
        width: 400
        height: 400
        anchors.centerIn: parent
        source: "../images.png"
    }

    Keys.onLeftPressed: {
        rocket.rotation = (rocket.rotation - 10) % 360
    }

    Keys.onRightPressed: {
        rocket.rotation = (rocket.rotation + 10) % 360
    }
}
