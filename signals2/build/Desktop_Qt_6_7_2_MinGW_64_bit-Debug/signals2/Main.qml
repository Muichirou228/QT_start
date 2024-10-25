import QtQuick
import QtQuick.Controls
import counter
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    function smile(newValue){
        labelCount.text = newValue;
    }
    Counter { id: counter}
    Row {
        anchors.centerIn: parent;
        spacing : 10
        Button {
            text: "+"
            height: 50
            width: 50
            onClicked: counter.increase()
        }
        Text {
            id : labelCount
        }
        Button {
            text: "-"
            height: 50
            width: 50
            onClicked: counter.decrease()
        }
    }
    Component.onCompleted: {
        counter.valueChanged.connect(smile);
    }
}
