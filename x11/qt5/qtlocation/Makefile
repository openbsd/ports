QT5NAME =		QtLocation
COMMENT-main =		Qt5 geo positioning APIs

KDE_COMMIT =		5b27b8921f1f2de93573df903c47aee634209f80
KDE_VERSION =		6

SHARED_LIBS +=  Qt5Location               3.1 # 5.15
SHARED_LIBS +=  Qt5Positioning            3.0 # 5.9
SHARED_LIBS +=  Qt5PositioningQuick       0.0 # 5.13

MULTI_PACKAGES =	-main -examples

WANTLIB-main += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5DBus
WANTLIB-main += Qt5Gui Qt5Network Qt5Qml Qt5QmlModels Qt5Quick Qt5SerialPort
WANTLIB-main += m

LIB_DEPENDS =		x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION} \
			x11/qt5/qtserialport>=${QT5_VERSION},<${QT5_NEXT_VERSION}

RUN_DEPENDS =		x11/dbus

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
