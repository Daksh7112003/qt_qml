import QtQuick 2.15
import QtQuick.Window 2.15

Rectangle{


    id : root
    property int cellCount : 4
    property int itemSize:  80


    width: cellCount*itemSize
    height:cellCount*itemSize

    border.color: " black"


    Rectangle {
        property int __row: 2
        property int __col: 1

        color: "blue"
        x: __col * root.itemSize
        y: __row * root.itemSize
        width: root.itemSize
        height: root.itemSize
        focus: true

        Keys.onLeftPressed: __col = (__col + root.cellCount - 1) % root.cellCount
        Keys.onRightPressed: __col = (__col + 1) % root.cellCount
        Keys.onDownPressed: __row = (__row + 1) % root.cellCount
        Keys.onUpPressed: __row = (__row + root.cellCount - 1) % root.cellCount
    }


}
