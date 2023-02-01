import QtQuick 2.15
import "qrc:/custom/controls/"
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15

Item {

    //minWidth: 200
    id: root
    width: list.implicitWidth
    height: list.implicitHeight

    ListView {
        id: list
        implicitHeight: 365
        implicitWidth: 250

        height: parent.height
        width: parent.width

        header: Rectangle {
            color: "#F9FAFC"
            width: parent.width
            height: 35
            Text {
                id: label
                text: qsTr("Where your money go?")
                font {
                    family: "poppins"
                    pixelSize: 20
                    letterSpacing: 0.33
                }
                color: "#262A41"
                elide: Text.ElideRight
                width: parent.width

                anchors.left: parent.left
                anchors.top: parent.top
            }
            z: 2
        }

        headerPositioning: ListView.OverlayHeader
        model: 100
        delegate: MoneyDelegate {
            width: list.width
        }
        clip: true
        spacing: 25

    }
}
