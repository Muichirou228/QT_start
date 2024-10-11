import QtQuick
import QtQuick.Controls
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    function printMessage(mess) {
        content.text += mess;
    }

    Rectangle {
        id: rect
        width: 200
        height: 200
        signal sendMessage(string message)
        Button{
            id: but
            anchors.fill: parent
            text: "Send"
            onClicked: rect.sendMessage("Heelo")
        }
    }

    Text{
        id: content
    }

    Component.onCompleted: {
        rect.sendMessage.connect(printMessage);
    }
}
