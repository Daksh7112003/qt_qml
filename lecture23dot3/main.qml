import QtQuick 2.15
import QtQuick.Window 2.15

Rectangle{
    width:400
    height:400
    color:"lightblue"


    Rectangle{
        id:rect
        x:300
        y:300

        width:100
        height:100


    }
    MouseArea{
        anchors.fill:parent
        onClicked:
        {
            anim.to=(rect.x==150? 0:150)
            anim.running =true

        }
    }
    NumberAnimation{
        id:anim
        target:rect
        properties: "x,y"
        to:150;
        duration:1000
        running:true

    }
}
