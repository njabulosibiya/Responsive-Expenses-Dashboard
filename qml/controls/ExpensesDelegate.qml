import QtQuick 2.15
import QtQuick.Controls 2.15

ItemDelegate {
    id: root

    property alias label: expenseTitle.text
    property alias amount: amount.text
    property alias time: time.text
    property alias location: location.text

    //minWidth: 225
    //maxWidth: 700

    Rectangle {
        id: icon
        implicitHeight: 48
        implicitWidth: 48
        color: "light gray"
        radius: 50
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
    }

    Text {
        id: expenseTitle
        text: "Title"
        font {
            family: "poppins"
            pixelSize: 16
            letterSpacing: 0.34
        }
        color: "#273240"

        anchors.left: icon.right
        anchors.top: parent.top
        anchors.leftMargin: 5
    }

    Text {
        id: amount
        text: "-267.00"
        font {
            family: "poppins"
            pixelSize: 16
            letterSpacing: 0.34
        }
        color: "#273240"

        anchors.right: parent.right
        anchors.top: parent.top
    }

    Text {
        id: time
        text: "00:00 am"
        font {
            family: "poppins"
            pixelSize: 14
            letterSpacing: 0.5
        }
        color: "#404852"

        anchors.left: icon.right
        anchors.bottom: parent.bottom
        anchors.leftMargin: 5
    }

    Text {
        id: location
        text: "- Somewhere"
        font {
            family: "poppins"
            pixelSize: 14
            letterSpacing: 0.5
        }
        color: "#404852"

        anchors.left: time.right
        anchors.bottom: parent.bottom
    }

    background: Rectangle {
        implicitHeight: 49
        implicitWidth: 500
        radius: 5

        color: root.down? "#17a81a" : "transparent"
        opacity: enabled? 1 : 0.3
    }
}
