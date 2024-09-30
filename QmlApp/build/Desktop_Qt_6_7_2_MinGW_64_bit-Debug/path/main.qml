import QtQuick 2.15
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Controls 2.15
Window {
    width: 500
    height: 500
    maximumHeight: 500
    maximumWidth: 500
    visible: true
    title: "METANIT.COM"
    id:wind

    Rectangle {
        anchors.left: parent.left
        width: parent.width * 0.5
        height: parent.height
        color: "transparent"
        id:leftarea
        MouseArea {
            anchors.fill: leftarea
            onClicked: {
             swipe.currentIndex = Math.max (0, swipe.currentIndex - 1)
            }
    }
    }

    Rectangle {
        anchors.right: parent.right
        width: parent.width * 0.5
        height: parent.height
        color: "transparent"
        id:rightarea
        MouseArea {
            anchors.fill: rightarea
            onClicked: {
                swipe.currentIndex = Math.min (swipe.count - 1, swipe.currentIndex + 1)
            }
        }
    }

    SwipeView {
        id:swipe
        interactive: false
        anchors.fill: wind
        Image {
            source:  "images/catnap1.jpeg"
            anchors.fill: wind
        }

        Image {
            source:  "images/catnap2.jpeg"
            anchors.fill: wind
        }

        Image {
            source:  "images/catnap3.jpeg"
            anchors.fill: wind
        }
}
        PageIndicator {
                id: indicator
                count: swipe.count       // количество страниц
                currentIndex: swipe.currentIndex // текущая страница
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
        }

}




