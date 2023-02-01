import QtQuick 2.15

Item {
    id: root

    //minWIdth: 400
    //maxWidth: 720
    width: container.implicitWidth
    height: container.implicitHeight

    Item {
        id: container
        implicitWidth: 510
        implicitHeight: 84

        width: parent.width
        height: parent.height

        Text {
            id: title
            text: "Expenses"
            font {
                family: "poppins"
                pixelSize: 40
                bold: true
                letterSpacing: 0.67
            }
            color: "#262A41"

            anchors.top: parent.top
            anchors.left: parent.left
        }

        Text {
            id: date
            text: "01 - 25 March, 2022"
            font {
                family: "poppins"
                pixelSize: 16
                letterSpacing: 0.34
            }
            color: "#101010"

            anchors.bottom: parent.bottom
            anchors.left: parent.left
        }

        Item {
            id: users
            width: 123
            height: 31

            anchors.verticalCenter: title.verticalCenter
            anchors.right: parent.right

            Rectangle {
                id: addUser
                width: parent.height - 7
                height: parent.height - 7

                color: "transparent"
                border {
                    color: "#D8D8D8"
                    width: 1
                }

                radius: 50

                Text {
                    text: "+"
                    anchors.centerIn: parent
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pixelSize: 10
                    color: "#D8D8D8"
                }

                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
            }

            ImagePreviewOnTitle {
                id: user1
                width: parent.height
                height: parent.height
                anchors.right: addUser.left
                anchors.rightMargin: 10
            }

            ImagePreviewOnTitle {
                id: user2
                width: parent.height
                height: parent.height
                anchors.right: user1.horizontalCenter
                source: "qrc:/images/images/avatar128.jpg"
            }

            ImagePreviewOnTitle {
                id: user3
                width: parent.height
                height: parent.height
                anchors.right: user2.horizontalCenter
            }
        }

    }

}
