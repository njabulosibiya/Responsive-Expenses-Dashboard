import QtQuick 2.15
import QtGraphicalEffects 1.15

Item {
    id: user1

    width: mask.implicitWidth
    height: mask.implicitHeight

    property alias source: image.source

    Rectangle {
        id: mask

        implicitWidth: 32
        implicitHeight: 32
        width: parent.width
        height: parent.height

        radius: 50
        visible: true
        border {
            color: "transparent"
            width: 2
        }
    }

    Image {
        id: image
        source: "qrc:/images/images/ce7249147bd073e19e9b00786d16bda31534531126_large.jpg"
        width: mask.width - 2
        height: mask.height - 2
        anchors.centerIn: parent
        clip: true
        fillMode: Image.PreserveAspectCrop
        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: mask
        }
    }

    anchors.right: parent.right
    //anchors.horizontalCenter: parent.horizontalCenter
}
