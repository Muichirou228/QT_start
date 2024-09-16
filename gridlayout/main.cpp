#include  <QApplication >
#include  <QWidget >
#include  <QGridlayout>
#include  <QPushButton >

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);

    QWidget* widget = new QWidget;
    widget -> setWindowTitle("METANIT.COM");

    QPushButton *btn1 = new QPushButton("Button 1");
    QPushButton *btn2 = new QPushButton("Button 2");
    QPushButton *btn3 = new QPushButton("Button 3");

    QGridLayout *layout = new QGridLayout(widget);
    layout->addWidget(btn1, 0,0);
    layout->addWidget(btn2, 0,1);
    layout->addWidget(btn3, 1,1);
    widget->show();
    return app.exec();
}
