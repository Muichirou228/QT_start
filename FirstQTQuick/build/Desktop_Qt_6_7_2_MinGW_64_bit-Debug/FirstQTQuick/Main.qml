import QtQuick 2.0
import QtQuick.Layouts
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")
    RowLayout {
        spacing: 20;
        Rectangle {
            Layout.preferredWidth: parent.width * 0.5 - 5;
            Layout.preferredHeight: 50;
            color: black;
        }

        Rectangle {
            Layout.preferredWidth: parent.width * 0.5 - 5;
            Layout.preferredHeight: 50;
            color: black;
        }
    }
}
