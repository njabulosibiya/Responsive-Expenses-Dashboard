import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15

Item {
    id: root

    width: background.width
    height: background.height

    Item {
        id: background

        implicitWidth: 200
        implicitHeight: 900

        width: parent.width
        height: parent.height

        ColumnLayout {
            id: layout
            anchors.fill: parent

            Profile {
                Layout.fillWidth: true
                Layout.maximumWidth: 200
                //Layout.minimumWidth: 145

                Layout.fillHeight: true
                Layout.maximumHeight: 175
                Layout.minimumHeight: 110

            }

            SideBarNavigation {
                id: nav
                Layout.fillHeight: true
                Layout.maximumHeight: 510
                Layout.minimumHeight: 260

                Layout.fillWidth: true
                Layout.maximumWidth: 200
                Layout.minimumWidth: 72
            }

        }
    }
}
