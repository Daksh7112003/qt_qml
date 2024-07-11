
import QtQuick 2.0

Item {
    id: root

    property alias text: label.text

    implicitWidth: label.implicitWidth + __margin * 2
    implicitHeight: background.implicitHeight

    readonly property int __margin: 35

    BorderImage {
        id: background
        anchors.fill: parent
        border { left: root.__margin; right: root.__margin }
        source: "images/button.png"
        Text {
            id: label
            anchors.centerIn: parent
            font.pixelSize: 30
        }
    }

}
