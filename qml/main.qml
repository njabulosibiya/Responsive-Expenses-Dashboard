import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.15
import "qrc:/custom/controls/"
import "qrc:/custom/components/"
import "qrc:/pages/pages/" as Page

ApplicationWindow {
    id: window
    width: mainLayout.implicitWidth
    height: mainLayout.implicitHeight
    visible: true
    title: qsTr("Hello World")
    minimumHeight: mainLayout.Layout.minimumHeight + 2 * 10
    minimumWidth: mainLayout.Layout.minimumWidth + 2 * 10

   background: Rectangle {
       color: "#101010"
   }


    RowLayout {
        id: mainLayout
        anchors.fill: parent
        anchors.margins: 10
        spacing: 130
        SideBar {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.minimumWidth: 130

        }

        Page.Expenses {
            Layout.fillWidth: true
            Layout.minimumWidth: 674

            Layout.fillHeight: true
            Layout.minimumHeight: 495
        }


    }
}
