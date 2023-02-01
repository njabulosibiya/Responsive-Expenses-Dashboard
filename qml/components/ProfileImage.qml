import QtQuick 2.15
import QtGraphicalEffects 1.15

Item {
    id: root

    width: mask.implicitWidth
    height: mask.implicitHeight

    Rectangle {
        id: mask

        implicitHeight: 72
        implicitWidth: 72

        width: parent.width
        height: parent.height

        radius: 13
        visible: true

        anchors.fill: parent
    }

    Image {
        id: profileImage
        source: "qrc:/images/images/ce7249147bd073e19e9b00786d16bda31534531126_large.jpg"
        anchors.fill: mask

        clip: true
        fillMode: Image.PreserveAspectCrop
        layer.enabled: true
        layer.effect: OpacityMask {
            maskSource: mask
        }
    }
}

