#include <QGuiApplication>
#include <QQmlApplicationEngine>

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QStringList dataList = {
        "Tom",
        "Bob",
        "alice"
    };

    QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
    engine.loadFromModule("ModelViewQML", "Main");
    QObject* listView = engine.rootObjects().first()->findChild<QObject*>("listView");
    listView->setProperty("model", dataList); // для второго задания загружаем в найденное представление модель datalist


    return app.exec();
}
