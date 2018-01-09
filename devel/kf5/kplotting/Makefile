# $OpenBSD: Makefile,v 1.6 2018/01/09 21:10:39 rsadowski Exp $

COMMENT =	KDE data plotting framework
DISTNAME =	kplotting-${VERSION}

SHARED_LIBS =	KF5Plotting		4.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
