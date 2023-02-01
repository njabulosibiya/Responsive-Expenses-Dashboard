import QtQuick 2.15
import QtQuick.Controls 2.15

ItemDelegate {
    id: root

    property alias label: label.text
    property alias amount: amount.text
    property alias value: bar.value

    //maxWidth: 460
    //minWidth: 190

    Text {
        id: label
        text: "Food and Drinks"
        font {
            family: "poppins"
            pixelSize: 13
            letterSpacing: 0.46
        }
        color: "#273240"
        anchors.top: parent.top
        anchors.left: parent.left
    }

    Text {
        id: amount
        text: "876,000"
        font {
            family: "poppins"
            pixelSize: 13
            letterSpacing: 0.46
        }
        color: "#273240"

        anchors.right: parent.right
        anchors.top: parent.top
    }

    ExpensesProgress {
        id: bar
        width: parent.width
        anchors.bottom: parent.bottom
    }

    background: Rectangle {
        implicitHeight: 37
        implicitWidth: 250
        color: root.down ? "#dddedf" : "transparent"
        opacity: enabled ? 1 : 0.3
        radius: 5
    }

}
