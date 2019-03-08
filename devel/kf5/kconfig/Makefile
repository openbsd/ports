# $OpenBSD: Makefile,v 1.9 2019/03/08 20:00:40 cwen Exp $

COMMENT =	KDE configuration system
DISTNAME =	kconfig-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5ConfigCore		4.2
SHARED_LIBS +=	KF5ConfigGui		4.2

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Xml c m

# for tests
PORTHOME =		${WRKDIR}
TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
