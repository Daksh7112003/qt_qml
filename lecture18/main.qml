import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick 2.0

Item {
    width: 250
    height: 200

//--> slide
    Rectangle {
        //--> hide
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.verticalCenter
        color: "lightblue"
        //<-- hide
        CheckBox {
            anchors.centerIn: parent
            onChecked: checkValue ? parent.color = "red"
                                  : parent.color = "lightblue"
        }
    }

    // Note: a signal is not always the best way to go.
    // in QML, always prefer a custom property over a signal.
    Rectangle {
        //--> hide
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.verticalCenter
        anchors.bottom: parent.bottom
        //<-- hide
        // We can now bind to the state
        color: checkBoxBetter.checked ? "red" : "lightblue"

        CheckBoxBetter {
            id: checkBoxBetter
            anchors.centerIn: parent

            // We can now initialize the property explicitly
            checked: false

            // We still have access to a signal handler on the checked property
            onCheckedChanged: console.log("checked=" + checked)
        }
    }
//<-- slide
}
