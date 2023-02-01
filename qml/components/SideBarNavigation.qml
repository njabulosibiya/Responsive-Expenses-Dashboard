import QtQuick 2.15
import QtQuick.Controls 2.15
import "qrc:/custom/controls/"

Item {
    width: view.implicitWidth
    height: view.implicitHeight

    ListView {
        id: view
        implicitWidth: 192
        implicitHeight: 500

        width: parent.width
        height: parent.height

        clip: true
        spacing: 5

        model: listModel
        delegate: PageNavigationButton {
            width: parent.width - scroll.width
            text: modelText
        }

        ListModel {
            id: listModel

            ListElement {
                modelText: "Dashboard"
            }

            ListElement {
                modelText: "Expenses"
            }

            ListElement {
                modelText: "Wallets"
            }

            ListElement {
                modelText: "Summary"
            }

            ListElement {
                modelText: "Accounts"
            }

            ListElement {
                modelText: "Settings"
            }
        }

        ScrollBar.vertical: ScrollBar {
            id: scroll
        }

    }

}
