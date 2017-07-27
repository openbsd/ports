# $OpenBSD: Makefile,v 1.4 2017/07/27 09:34:37 sthen Exp $

COMMENT =	KDE configuration system
DISTNAME =	kconfig-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5ConfigCore		2.0
SHARED_LIBS +=	KF5ConfigGui		2.0

WANTLIB =	${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Xml c m

# for tests
PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
