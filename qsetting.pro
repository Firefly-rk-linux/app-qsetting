
QT      += widgets multimedia

TARGET = qsetting
TEMPLATE = app


SOURCES += \
        main.cpp \
        mainwindow.cpp \
        qtaudio.cpp \
        qtbt.cpp \
        qtfactory.cpp \
        qtinputdialog.cpp \
        qtkeyboard.cpp \
        qtupdate.cpp \
        qtwifi.cpp \

HEADERS += \
        mainwindow.h \
        qtaudio.h \
        qtbt.h \
        qtfactory.h \
        qtinputdialog.h \
        qtkeyboard.h \
        qtupdate.h \
        qtwifi.h \
        Rk_wifi.h\
        Rk_softap.h\

FORMS += \
    qtkeyboard.ui \

LIBS +=-L/home/sdk/test/test3588/buildroot/output/rockchip_rk3588/host/aarch64-buildroot-linux-gnu/sysroot/usr/lib/ -lasound
win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../../../test3588/buildroot/output/rockchip_rk3588/host/aarch64-buildroot-linux-gnu/sysroot/usr/lib/release/ -lrkwifibt
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../../../test3588/buildroot/output/rockchip_rk3588/host/aarch64-buildroot-linux-gnu/sysroot/usr/lib/debug/ -lrkwifibt
else:unix:!macx: LIBS += -L$$PWD/../../../test3588/buildroot/output/rockchip_rk3588/host/aarch64-buildroot-linux-gnu/sysroot/usr/lib/ -lrkwifibt

INCLUDEPATH += $$PWD/../../../test3588/buildroot/output/rockchip_rk3588/host/aarch64-buildroot-linux-gnu/sysroot/usr/include
DEPENDPATH += $$PWD/../../../test3588/buildroot/output/rockchip_rk3588/host/aarch64-buildroot-linux-gnu/sysroot/usr/include

RESOURCES += res.qrc
