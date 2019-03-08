# $OpenBSD: Makefile,v 1.9 2019/03/08 20:00:42 cwen Exp $

COMMENT =	KDE data plotting framework
DISTNAME =	kplotting-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5Plotting		4.2

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
