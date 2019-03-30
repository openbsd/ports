# $OpenBSD: Makefile,v 1.10 2019/03/30 09:13:54 rsadowski Exp $

COMMENT =	KDE data plotting framework
DISTNAME =	kplotting-${VERSION}

SHARED_LIBS =	KF5Plotting		4.3

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
