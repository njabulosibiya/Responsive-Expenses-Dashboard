import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: control
    text: "Dashboard"

    contentItem: Text {
        text: control.text
        color: "#FFFFFF"
        font {
            pixelSize: 25
            family: "poppins"
        }
        wrapMode: Text.WordWrap
        elide: Text.ElideRight
        verticalAlignment: Text.AlignVCenter
        anchors.verticalCenter: parent.verticalCenter
    }

    background: Rectangle {
        id: background
        implicitWidth: 192
        implicitHeight: 42

        radius: 5
        color: control.down ? "#17a81a" : "transparent"

    }

    onClicked:  {

    }

    hoverEnabled: true
    HoverHandler {
        id: hover
        cursorShape: Qt.PointingHandCursor
    }

}
