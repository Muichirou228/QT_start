import QtQuick

Window {
    width: 250
    height: 150
    visible: true
    title: "METANIT.COM"
/* 1
Модель хранит объекты прямоугольников, делегат не нужен, так как ObjectModel уже содержит визуальный делегат (элементы)
    ObjectModel {
            id: itemsModel
            Rectangle { height: 50; width: 80; color: "red" }
            Rectangle { height: 50; width: 80; color: "green" }
            Rectangle { height: 50; width: 80; color: "blue" }
    }

    ListView {
            anchors.fill: parent
            model: itemsModel
            spacing: 5
    }
} */

    ListView {
            objectName: "listView"
            anchors.fill: parent
            delegate: Text { text: modelData }
        }

}

