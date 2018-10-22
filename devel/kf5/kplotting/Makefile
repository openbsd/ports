# $OpenBSD: Makefile,v 1.8 2018/10/22 20:30:43 rsadowski Exp $

COMMENT =	KDE data plotting framework
DISTNAME =	kplotting-${VERSION}

SHARED_LIBS =	KF5Plotting		4.2

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
