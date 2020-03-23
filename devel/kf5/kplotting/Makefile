# $OpenBSD: Makefile,v 1.11 2020/03/23 18:01:10 rsadowski Exp $

COMMENT =	KDE data plotting framework
DISTNAME =	kplotting-${VERSION}

SHARED_LIBS =	KF5Plotting		5.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
