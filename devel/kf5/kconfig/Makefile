# $OpenBSD: Makefile,v 1.11 2019/08/21 06:18:57 rsadowski Exp $

COMMENT =	KDE configuration system
DISTNAME =	kconfig-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5ConfigCore		4.3
SHARED_LIBS +=	KF5ConfigGui		4.3

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Xml c
WANTLIB += m

# for tests
PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
