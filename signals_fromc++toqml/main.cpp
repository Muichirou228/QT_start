#include <QGuiApplication>
#include <QQmlApplicationEngine>
#import "counter.h"
int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    qmlRegisterType<Counter>("counter", 1, 0, "Counter");
    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("signals2", "Main");

    return app.exec();
}
