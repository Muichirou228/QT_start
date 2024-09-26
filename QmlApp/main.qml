import QtQuick 2.15
import QtQuick.Layouts
Window {
    id:wind
    width: 400
    height: 250
    visible: true
    title: qsTr("Hello METANIT.COM")
    RowLayout{
        Layout.alignment: horizontalCenter | verticalCenter
        spacing: 0
           Rectangle{
               Layout.preferredHeight: 100
               Layout.preferredWidth: wind.width * 0.3
               color: "#eb4d4b"    // красный
           }
           Rectangle{
               Layout.fillHeight: true
               Layout.preferredWidth: wind.width * 0.3
               color: "#16a085"    // зеленый
           }
           Rectangle{
               Layout.preferredHeight: 80
               Layout.preferredWidth: wind.width * 0.3
               color: "#0984e3"    // синий
           }
       }

}
