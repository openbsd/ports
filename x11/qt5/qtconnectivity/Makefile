QT5NAME =	QtConnectivity
COMMENT-main =	Bluetooth and NFC support for Qt5

KDE_COMMIT =		8024ef3d7269665ba104f528e5e284df9d9d8ae9
KDE_VERSION =		4

SHARED_LIBS +=  Qt5Bluetooth          3.0 # 5.9
SHARED_LIBS +=  Qt5Nfc                3.0 # 5.9

MULTI_PACKAGES =	-main -examples

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5QmlModels Qt5Qml Qt5Quick m

LIB_DEPENDS =	x11/qt5/qtdeclarative>=${QT5_VERSION},<${QT5_NEXT_VERSION}

RUN_DEPENDS =	x11/dbus

FLAVORS =		debug

MODQMAKE_RECURSIVE =	No

pre-configure:
	${QT5_GEN_INCLUDES}

.include <bsd.port.mk>
