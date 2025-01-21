import QtQuick
import QtQuick.Controls
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    ScrollView {
        height: 100
        width: 100
        Item {
            anchors.fill:parent
            Text {
                text:"HELLO"
                font.pixelSize: 1000
            }
        }


    }
}
