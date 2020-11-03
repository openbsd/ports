# $OpenBSD: Makefile,v 1.14 2020/11/03 16:12:05 rsadowski Exp $

COMMENT =	KDE configuration system
DISTNAME =	kconfig-${VERSION}

SHARED_LIBS =	KF5ConfigCore		6.1
SHARED_LIBS +=	KF5ConfigGui		6.1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Xml c
WANTLIB += m

# for tests
PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
