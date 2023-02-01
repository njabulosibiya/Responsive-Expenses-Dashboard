import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/custom/controls/"

Item {
    id: root

    width: container.implicitWidth
    height: container.implicitHeight

    //property alias label: listLabel.text

    ListView {
        id: container

        implicitHeight: 210
        implicitWidth: 500

        width: parent.width
        height: parent.height

        spacing: 10
        clip: true
        model: 50
        delegate: ExpensesDelegate {
            width: container.width
        }

        header: Rectangle {
            implicitHeight: 38.5
            implicitWidth: container.width

            color: "#FFFFFF"
            z: 2

            Text {
                id: listLabel
                text: "today"

                font {
                    family: "poppins"
                    pixelSize: 18
                    bold: true
                    letterSpacing: 0.3
                }
                color: "#262A41"

                anchors.left: parent.left
                anchors.top: parent.top
            }

            Image {
                id: dots
                source: "qrc:/icons/icons/dots.png"
                height: 32
                width: 32

                anchors.verticalCenter: parent.verticalCenter
                anchors.right: parent.right
            }
        }
        headerPositioning: ListView.OverlayHeader
    }

}
