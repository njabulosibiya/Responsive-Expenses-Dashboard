import QtQuick 2.15
import QtQuick.Layouts 1.15
import "qrc:/custom/controls/"

Item {

    //minWidth: 200
    //maxWidth:
    //minHeight: 110
    //maxHeight:
    width: container.implicitWidth
    height: container.implicitHeight

    Rectangle {
        id: container

        color: "#EDF0F6"
        radius: 15

        implicitHeight: 258
        implicitWidth: 250

        width: parent.width
        height: parent.height

        //currently our Component is 250 in width and we want our button to resize but also be at its initial size of
        //200 for 1440p. Therefore we fill the parent with a Column view that has its margins set to 25 [250 - (25 *2)]
        //which will give us our button size.
        //we do not set the minimum size of the button as that can only be done in layouts. Its height wont resize
        //but thats fine as i realized that not every single dimension must be resizable, especially controls.
        //scale must be used to make things bigger or smaller.
        ColumnLayout {
            id: layout

            //anchors.fill: parent
            anchors.margins: 25
            anchors.fill: parent

            Item {
                id: image
                implicitHeight: 72
                implicitWidth: 84

                width: height - 10

                Image {
                    source: "qrc:/icons/icons/package.png"

                    anchors.fill: parent
                }

                Layout.fillHeight: true
                Layout.maximumHeight: image.implicitHeight + 30

                Layout.maximumWidth: image.implicitWidth+30

                visible: layout.height > 212? true : false
            }

            Text {
                id: label
                text: "Save more money"

                font {
                    family: "poppins"
                    pixelSize: 16
                    letterSpacing: 0.34
                }
                color: "#273240"
            }

            Text {
                id: content
                text: "To save more money my man, you must not have debt and be sure that you don't endulge"
                //use elide to wrap your text on resize. width must be explicitly defined
                wrapMode: Text.WordWrap
                elide: Text.ElideRight//must be used with wrapMode else, it'll have an elipsis at the end

                //implicitHeight: 63

                font {
                    family: "poppins"
                    pixelSize: 12
                    letterSpacing: 0.43
                }
                color: "#273240"
                Layout.fillWidth: true

                Layout.fillHeight: true
                Layout.maximumHeight: 66
                Layout.minimumHeight: 20

                Layout.preferredHeight: 64
            }

            TipsButton {
                Layout.fillWidth: true
            }

        }
    }
}
/*
        Column {
            id: layout
            //anchors.fill: parent
            anchors.margins: 25
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            spacing: 10




            TipsButton {
                id: button
                width: parent.width
            }
        }

*/
