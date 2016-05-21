######################################################################
# Automatically generated by qmake (3.0) ?? ??? 24 13:16:11 2014
######################################################################

EXE_NAME = PopcornTime

TEMPLATE = app
TARGET = $$EXE_NAME
QT += webkitwidgets widgets

CONFIG += debug_and_release

DEFINES += QUAZIP_STATIC

INCLUDEPATH += . ../Import/quazip ../Import/root/include ../lib

RESOURCES = resources.qrc

win32:RC_ICONS = res/popcorntime.ico
mac:  ICON     = res/popcorntime.icns

SOURCES += FramelessMainWindow.cpp GraphicsBrowser.cpp SeekSlider.cpp SubComboBox.cpp SubtitleDecoder.cpp \
           ResizeDragEventHandler.cpp vlc.cpp hostApp.cpp VideoControl.cpp commontypes.cpp \
           config.cpp ChromeCast.cpp GlyphButton.cpp NjsProcess.cpp VMediaPlayer.cpp \
           main.cpp
OBJECTIVE_SOURCES += osxutil.mm


HEADERS += FramelessMainWindow.h GraphicsBrowser.h SeekSlider.h SubComboBox.h SubtitleDecoder.h \
           ResizeDragEventHandler.h vlc.h hostApp.h VideoControl.h commontypes.h \
           config.h ChromeCast.h GlyphButton.h NjsProcess.h VMediaPlayer.h

win32:             LIBS += -llib 
mac:               LIBS += -lstreamerok -ltorrent -liconv  \
                           -L/opt/local/boost/stage/lib -lboost_thread-xgcc42-mt-s-1_55 -lboost_date_time-xgcc42-mt-s-1_55 \
                           -lboost_filesystem-xgcc42-mt-s-1_55 -lboost_system-xgcc42-mt-s-1_55 -framework Cocoa

win32:Release:     DESTDIR = releaseW
win32:debug:       DESTDIR = debugW
mac:debug:         DESTDIR = debugM
mac:Release:       DESTDIR = releaseM
unix:!macx:Release:DESTDIR = releaseU
unix:!macx:debug:  DESTDIR = debugU
win32:             VLCQT_BASE = /libvlcqt
macx:              VLCQT_BASE = /usr/local
win32:             LIB_POSTFIX = -win32
macx:              LIB_POSTFIX = -macosx

LIBS += -lvlc-qt-widgets -lvlc-qt -L. -L../Import/root -lquazip$${LIB_POSTFIX} -lz$${LIB_POSTFIX}

INCLUDEPATH += $$VLCQT_BASE/include
LIBS        += -L$$VLCQT_BASE/lib
QT_BIN_DIR = $$dirname(QMAKE_QMAKE)

OBJECTS_DIR = $$DESTDIR/.obj
MOC_DIR = $$DESTDIR/.obj
RCC_DIR = $$DESTDIR/.obj
UI_DIR = $$DESTDIR/.obj

mac: QMAKE_MACOSX_DEPLOYMENT_TARGET = 10.6
mac: QMAKE_POST_LINK=strip $$DESTDIR/$${EXE_NAME}.app/Contents/MacOS/$${EXE_NAME}

mac:Release{
    system(rm -Rf $${DESTDIR}/$${EXE_NAME}.app/Contents/lib)
    system(rm -Rf $${DESTDIR}/$${EXE_NAME}.app/Contents/plugins)
    system(mkdir -p $${DESTDIR}/$${EXE_NAME}.app/Contents/lib)
    system(cp "$$VLCQT_BASE/lib/libvlccore.7.dylib" "$$DESTDIR/$${EXE_NAME}.app/Contents/lib")
    system(cp "$$VLCQT_BASE/lib/libvlc.5.dylib" "$$DESTDIR/$${EXE_NAME}.app/Contents/lib")
    system(cp "$$VLCQT_BASE/lib/libvlc-qt-widgets.dylib" "$$DESTDIR/$${EXE_NAME}.app/Contents/lib")
    system(cp "$$VLCQT_BASE/lib/libvlc-qt.dylib" "$$DESTDIR/$${EXE_NAME}.app/Contents/lib")
    system(cp -R "$$VLCQT_BASE/plugins" "$${DESTDIR}/$${EXE_NAME}.app/Contents/plugins")
}
