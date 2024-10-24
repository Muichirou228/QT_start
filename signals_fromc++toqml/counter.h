#ifndef COUNTER_H
#define COUNTER_H
#include <QObject>
class Counter: public QObject
{
    Q_OBJECT
public:
    Counter(QObject *parent = nullptr){}

    Q_INVOKABLE void decrease();
    Q_INVOKABLE void increase();
signals:
    void valueChanged(int);
private:
    int value{};
};

#endif // COUNTER_H
