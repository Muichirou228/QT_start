import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle {
        x: 10
        y: 10
        z: 2
        id: rect
        color: "red"
        width: 100
        height: 100
        Drag.active: true
        property point begindrag
        begindrag.x: 100
        begindrag.y: 100
        MouseArea {
            id: take
            anchors.fill: parent
            drag.target: parent //что конкретно можно перетаскивать, в нашем случае весь прямоугольник
            onReleased:{
                    rect.x = rect.begindrag.x // возвращаем прямоугольник
                    rect.y = rect.begindrag.y
            }
        }
    }

    Rectangle {
        id: rectfinal
        color: "gray"
        height: parent.height
        width: parent.width / 2
        anchors.right: parent.right
        DropArea {
            id: last
            anchors.fill: parent
            onExited:{
                drag.source.begindrag.x = 100
                drag.source.begindrag.y = 100
            }
            onEntered: {
                rect.begindrag.x = 450    // то же самое что и сверху
                rect.begindrag.y = 200
        }
    }
}
}
