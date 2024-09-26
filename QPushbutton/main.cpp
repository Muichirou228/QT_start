#include <QApplication>
#include <QWidget>
#include <QPushButton>
#include <QMessageBox>

void onClick();
int count = 0;
//int count{0};
QPushButton *btn = nullptr;



int main(int argc, char *argv[])
{

    QApplication app(argc, argv);
    QWidget widget;
    widget.setWindowTitle("QPushButton");
    widget.setMinimumHeight(300);
    widget.setMinimumWidth(300);

    btn = new QPushButton("HELLO", &widget);
    QObject::connect(btn, &QPushButton::clicked, onClick);
    //QPushButton btn{"Button", &widget};
    //QObject::connect(&btn, &QPushButton::clicked, onClick);
    //То что сверху закомментировано использовать типа не надо потому что для того чтобы работать с конкретной кнопкой надо ей память выделить

    widget.show();

    return app.exec();
}

void onClick() {
    btn->setText(QString::number(++count));
}
