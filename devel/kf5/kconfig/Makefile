# $OpenBSD: Makefile,v 1.8 2018/10/22 20:30:41 rsadowski Exp $

COMMENT =	KDE configuration system
DISTNAME =	kconfig-${VERSION}

SHARED_LIBS =	KF5ConfigCore		4.2
SHARED_LIBS +=	KF5ConfigGui		4.2

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Xml c m

# for tests
PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
