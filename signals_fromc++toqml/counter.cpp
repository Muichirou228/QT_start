#include "counter.h"


void Counter::increase()
{
    value++;
    emit valueChanged(value);
}

void Counter::decrease()
{
    value--;
    emit valueChanged(value);
}
