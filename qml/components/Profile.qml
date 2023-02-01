import QtQuick 2.15
import QtQuick.Layouts 1.15

Item {
    id: root

    width: background.implicitWidth
    height: background.implicitHeight

    Item {
        id: background

        implicitWidth: 192
        implicitHeight: 180

        width: parent.width
        height: parent.height

        ColumnLayout {
            id: layout
            anchors.fill: parent

            ProfileImage {
                id: image

                Layout.fillHeight: true
                Layout.maximumHeight: 72

                width: image.height


                Rectangle {
                    id: notificationCount
                    width: 29
                    height: 29

                    color: "#DC3434"
                    radius: 100

                    visible: parent.width >40? true : false

                    Text {
                        text: qsTr("4")
                        color: "#FFFFFF"
                        font {
                            pixelSize: 13
                            family: "poppins"
                        }

                        anchors.centerIn: parent
                    }

                    anchors.verticalCenter: parent.top
                    anchors.horizontalCenter: parent.right

                }
            }

            Text {
                id: userName
                text: "Njabulo S"
                color: "#FFFFFF"
                wrapMode: Text.WordWrap
                elide: Text.ElideRight

                Layout.fillWidth: true
                Layout.minimumWidth: userName.implicitWidth

                font {
                    pixelSize: 30
                    family: "poppins"
                }

                Rectangle {
                    id: notificationCountOnName
                    width: 29
                    height: 29

                    color: "#DC3434"
                    radius: 100

                    visible: image.width <= 40? true : false

                    Text {
                        text: qsTr("4")
                        color: "#FFFFFF"
                        font {
                            pixelSize: 13
                            family: "poppins"
                        }

                        anchors.centerIn: parent
                    }

                    anchors.verticalCenter: parent.top
                    anchors.horizontalCenter: parent.right

                }


            }

            Text {
                id: userEmail
                text: "njabs@ilovenjabs.com"
                color: "#FFFFFF"

                Layout.fillWidth: true

                font {
                    pixelSize: 17
                    family: "poppins"
                }

                wrapMode: Text.WordWrap
                elide: Text.ElideRight
            }
        }
    }

}

/*

*/
