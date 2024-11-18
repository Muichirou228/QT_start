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
/* 2
Модель загружается в main.cpp
    ListView {
            objectName: "listView"
            anchors.fill: parent
            delegate: Text { text: modelData }
        }

}*/
ListView {
    id: view
    anchors.fill: parent
    highlight: Rectangle {color: "gray"}
    focus: true
    model: ListModel {
        ListElement {
            name: "Alex"
            age: 29
        }
        ListElement{
            name: "Kirill"
            age: 30
        }
        ListElement {
            name: "Bagir"
            age: 40
        }
    }
    delegate: Item {
        width: view.width
        height: 45
        Column {
            Text {text: name}
            Text {text: age}
        }
        MouseArea {
            anchors.fill: parent
            onClicked: view.currentIndex = index
        }
    }
}
}

