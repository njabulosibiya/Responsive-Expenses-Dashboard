import QtQuick 2.15

Item {
    width: count.implicitWidth
    height: count.implicitHeight

    Rectangle {
        id: notificationCount
        implicitWidth: 29
        implicitHeight: 29

        height: parent.height
        width: parent.width

        color: "#DC3434"
        radius: 100

        Text {
            text: qsTr("4")
            color: "#FFFFFF"
            font {
                pixelSize: 13
                family: "poppins"
            }

            anchors.centerIn: parent
        }

        anchors.verticalCenter: parent.top
        anchors.horizontalCenter: parent.right

    }


}
