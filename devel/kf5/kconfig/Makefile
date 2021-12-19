# $OpenBSD: Makefile,v 1.17 2021/12/19 10:51:00 rsadowski Exp $

COMMENT =	KDE configuration system
DISTNAME =	kconfig-${VERSION}

SHARED_LIBS =	KF5ConfigCore		6.2
SHARED_LIBS +=	KF5ConfigGui		6.2

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Qml Qt5Xml c m

LIB_DEPENDS =	x11/qt5/qtdeclarative

# for tests
PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
