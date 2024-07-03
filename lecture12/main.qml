
import QtQuick 2.15
import QtQuick.Window 2.15


Rectangle{

    width:500
    height:500

    rotation:45 // for the rotation of the gradient

    scale:1.5 // the size will dis balance if we do the rotation due to we need to increase the scale....







    gradient: Gradient{

        GradientStop{
            position: 0.0;
            color:"green"


        }

        GradientStop{
            position: 0.5;
            color:"yellow"


        }
        GradientStop{
            position: 1
            color:"blue"
        }
    }

}
