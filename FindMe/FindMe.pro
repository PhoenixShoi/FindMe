TEMPLATE = app

QT += qml quick widgets positioning declarative

SOURCES += main.cpp \
    geolocation.cpp \
    asyncbackgroundnetwork.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
include(deployment.pri)

HEADERS += \
    geolocation.h \
    asyncbackgroundnetwork.h

macx: LIBS += -L$$PWD/../../../../boost_1_56_0/stage/lib/ -lboost_system

INCLUDEPATH += $$PWD/../../../../boost_1_56_0
DEPENDPATH += $$PWD/../../../../boost_1_56_0
