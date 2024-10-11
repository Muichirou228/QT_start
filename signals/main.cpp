#include <QCoreApplication>
#include "counter.h"
#include <iostream>
void onCounterChanged (int);
int main(int argc, char *argv[])
{
    QCoreApplication a(argc, argv);

    Counter counter{};
    QObject::connect(&counter, &Counter::increased, &onCounterChanged);
    counter.increase();
    counter.increase();
    counter.increase();
    return a.exec();
}

void onCounterChanged(int value) {
    std::cout << "New Value = " << value << std::endl;
}
