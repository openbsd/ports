# $OpenBSD: Makefile,v 1.13 2020/09/07 14:48:45 rsadowski Exp $

COMMENT =	KDE configuration system
DISTNAME =	kconfig-${VERSION}

SHARED_LIBS =	KF5ConfigCore		6.0
SHARED_LIBS +=	KF5ConfigGui		6.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Xml c
WANTLIB += m

# for tests
PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
