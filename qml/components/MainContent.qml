import QtQuick 2.15
import QtQuick.Layouts 1.15
import QtQuick.Controls 2.15
import "qrc:/custom/components/"

Item {
    id: root

    width: layout.implicitWidth
    height: layout.implicitHeight


    Item {
        id: container

        implicitHeight: 741
        implicitWidth: 510

        width: parent.width
        height: parent.height

        ColumnLayout {
            id: layout

            anchors.fill: parent
            spacing: 35

            MainTitle {
                Layout.fillWidth: true
            }

            ListView {
                id: view

                Layout.fillWidth: true
                Layout.minimumWidth: 320

                Layout.fillHeight: true
                //Layout.minimumHeight:

                spacing: 35
                clip: true

                model: 10
                delegate: DailyExpenses {
                    width: view.width - 10
                }

                ScrollBar.vertical: ScrollBar {}
            }

        }
    }
}
