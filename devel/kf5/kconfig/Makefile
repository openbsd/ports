# $OpenBSD: Makefile,v 1.7 2018/06/04 20:25:31 rsadowski Exp $

COMMENT =	KDE configuration system
DISTNAME =	kconfig-${VERSION}

SHARED_LIBS =	KF5ConfigCore		4.1
SHARED_LIBS +=	KF5ConfigGui		4.1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Xml c m

# for tests
PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
