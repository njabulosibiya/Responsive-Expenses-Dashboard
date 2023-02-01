import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "qrc:/custom/components/"

Item {
    width: page.implicitWidth
    height: page.implicitHeight

    Rectangle {
        id: page

        implicitHeight: 860
        implicitWidth: 1060

        width: parent.width
        height: parent.height

        radius: 30
        color: "#FFFFFF"

        RowLayout {
            id: layout

            anchors.fill: parent

            MainContent {
                Layout.margins: 20

                Layout.fillHeight: true

                Layout.fillWidth: true
                Layout.minimumWidth: 320
            }

            PageExpensesRightContent {
                Layout.fillHeight: true
                //Layout.minimumHeight: 693

                Layout.fillWidth: true
                Layout.minimumWidth: 310
                //Layout.maximumWidth: 279
            }
        }

    }
}
