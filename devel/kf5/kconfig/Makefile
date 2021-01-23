# $OpenBSD: Makefile,v 1.15 2021/01/23 18:09:52 rsadowski Exp $

COMMENT =	KDE configuration system
DISTNAME =	kconfig-${VERSION}

SHARED_LIBS =	KF5ConfigCore		6.1
SHARED_LIBS +=	KF5ConfigGui		6.2

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Xml c
WANTLIB += m

# for tests
PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
