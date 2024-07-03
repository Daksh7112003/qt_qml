import QtQuick 2.15
import QtQuick.Window 2.15


Rectangle{


    width:500
    height:500


    Text{

        font.pixelSize: 40


        text: "Press me "

        anchors.centerIn: parent




        color: mouseArea.pressed? "green":"black"

        MouseArea{
            id:mouseArea

            anchors.fill:parent
        }

    }
}
