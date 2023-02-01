import QtQuick 2.15
import QtQuick.Controls 2.15 as C
/*
Item {
    width: button.implicitWidth
    height: button.implicitHeight

    property alias text: text.text

    ---C.Button goes here---
}
*/

//Controls do not, nor should they be in Item containers as they already control everything (i.e width, implicitWidth)
//etc... Putting them in Item containers actually makes things worse.
C.Button {
    id: button
    contentItem: Text {
        id: text
        text: "VIEW TIPS"
        font {
            family: "poppins"
            pixelSize: 13
            letterSpacing: 1.5
        }
        opacity: enabled ? 1.0 : 0.3
        color: button.down ? "#17a81a" : "#FFFFFF"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }

    background: Rectangle {
        color: button.down? "#FFFFF" : "#101010"
        radius: 8
        opacity: enabled ? 1 : 0.3

        implicitHeight: 45
        implicitWidth: 200

        width: parent.width
        height: parent.height
    }
}

//}
