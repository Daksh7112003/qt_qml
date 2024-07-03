import QtQuick 2.15
import QtQuick.Window 2.15

Rectangle{

    id:background
    width: 500
    height: 500
    color:"lightblue"


    Rectangle{


        color:"green"
        y:25

        height:50;

        width:50


        anchors{

            right:background.right
            top:background.top

        }



    }


}
