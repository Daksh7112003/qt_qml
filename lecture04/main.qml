import QtQuick 2.15
import QtQuick.Window 2.15

Item {
    width: 640
    height: 480

    Text{


        x:50
        y:25

        font.pixelSize: 50


        id:textelement;

        text:"QtQuick"


    }



Rectangle{


    x:50
    y:75



    height:3
   width:textelement.width
   color:"green"



}



}


