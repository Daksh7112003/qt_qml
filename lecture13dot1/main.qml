
import QtQuick 2.15
import QtQuick.Window 2.15

Rectangle {
    width: 640
    height: 640


    color:"lightblue"


    Rectangle{


        x:50
        y:50



        width:50
        height:50



        color:"red"



        MouseArea{

            anchors.fill:parent
            onPressed:console.log("Lower rectangle pressed")

            onReleased: console.log("Lower rectangle released")

            onClicked: console.log("Lower rectangle clicked")





        }
    }


    Rectangle{


        x:75
        y:75


        width:50
        color:"blue"
        height:50



        MouseArea{

            anchors.fill:parent
            onPressed:console.log("Upper rectangle pressed")

            onReleased: console.log("Upper rectangle Released ")

            onClicked:console.log("Upper rectangle clicked")




        }
    }


}
