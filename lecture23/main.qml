
import QtQuick 2.15
import QtQuick.Window 2.15

Rectangle{
width:400
height:400

color:"lightblue"



Rectangle{
    id:rect
    x:0
    y:100
    width:100
    height:100

}

NumberAnimation{
    target:rect
    properties: "x,y"
    to:120
    duration: 1000
    running :true
}


}

