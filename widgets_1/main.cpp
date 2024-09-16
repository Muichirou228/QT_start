#include  <QApplication >
#include  <QWidget >
#include  <QHBoxLayout >
#include  <QPushButton >

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QWidget* widget = new QWidget;
    widget -> setWindowTitle("METANIT.COM");

    QPushButton *btn1 = new QPushButton("Button 1");
    QPushButton *btn2 = new QPushButton("Button 2");
    QPushButton *btn3 = new QPushButton("Button 3");

    QHBoxLayout *layout = new QHBoxLayout(widget);
    layout->addStrut(100); // минимальный размер
    layout->addWidget(btn1);
    layout->addWidget(btn2);
    layout->addWidget(btn3);
    // расположение справа налево
    layout->setDirection(QBoxLayout::Direction::RightToLeft);

    widget->show();
    return app.exec();
}
