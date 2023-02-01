import QtQuick 2.15
import QtQuick.Controls 2.15

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
ProgressBar {
    id: root
    value: 0.2// initial value

    implicitHeight: bg.implicitHeight
    implicitWidth: bg.implicitWidth

    background: Rectangle {
        id: bg
        implicitHeight: 5
        implicitWidth: 250
        //you can include the following or not. Not compulsory
        //width: root.width
        //height: root.height
        color: "#ECEFF5"
        radius: 5
    }

    contentItem: Item {
        id: progress
        implicitHeight: bg.height
        implicitWidth: bg.width

        Rectangle {
            width: root.visualPosition * parent.width
            height: bg.height
            radius: 5
            color: "#31BA96"
        }
    }
}
