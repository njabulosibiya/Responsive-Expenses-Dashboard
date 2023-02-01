import QtQuick 2.15
import QtQuick.Layouts 1.15

Item {

    width: background.implicitWidth
    height: background.implicitHeight

    Rectangle {
        id: background

        implicitHeight: 860
        implicitWidth: 350

        width: parent.width
        height: parent.height

        color: "#F9FAFC"
        radius: 30

        Rectangle {
            id: leftRadiusRemove

            height: parent.height
            width: parent.radius
            color: parent.color

            anchors.left: parent.left
        }

        /*
        ColumnLayout {
            anchors.fill: parent
            //anchors.margins: 50

            Expenses {

                //Layout.fillWidth: true
                //Layout.minimumWidth: 100
                //Layout.maximumWidth: 340

                //Layout.fillHeight: true
                //Layout.minimumHeight: 220
            }

            Tips {

            }
        }*/


        ColumnLayout {
            anchors.fill: parent
            anchors.margins: 50

            Expenses {
                Layout.fillWidth: true
                Layout.fillHeight: true
            }

            Tips {
                Layout.alignment: Qt.AlignRight
                Layout.fillWidth: true
                Layout.maximumWidth: 320

                Layout.fillHeight: true
                Layout.maximumHeight: 280
            }
        }
    }

}
