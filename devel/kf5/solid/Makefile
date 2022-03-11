COMMENT =	KDE hardware abstraction layer
DISTNAME =	solid-${VERSION}

SHARED_LIBS =	KF5Solid		7.1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Xml c m

BUILD_DEPENDS =	devel/bison

RUN_DEPENDS =	sysutils/openbsdisks2

LIB_DEPENDS =	x11/qt5/qtdeclarative

#The following tests FAILED:
#2 - halbasictest (Failed)

.include <bsd.port.mk>
