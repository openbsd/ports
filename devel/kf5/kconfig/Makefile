# $OpenBSD: Makefile,v 1.3 2017/06/07 17:03:37 rsadowski Exp $

COMMENT =	KDE configuration system
DISTNAME =	kconfig-${VERSION}

SHARED_LIBS =	KF5ConfigCore		2.0
SHARED_LIBS +=	KF5ConfigGui		2.0

WANTLIB =	Qt5Core Qt5Gui Qt5Xml c m

# for tests
PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
