#include "counter.h"


//Counter::Counter(QObject *parent) : QObject(parent)
//{
    // устанавливаем соединение между сигналом created и слотом onCreated
    //QObject::connect(this, SIGNAL(created()),this, SLOT(onCreated()));
    //emit created(); // генерируем сигнал created
//}
// реализация слота onCreated

void Counter::increase() {
    value++;
    emit increased(value);
}
