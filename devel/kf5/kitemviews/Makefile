# $OpenBSD: Makefile,v 1.13 2021/01/23 18:09:54 rsadowski Exp $

COMMENT =		extensions for the Qt model-view framework
DISTNAME =		kitemviews-${VERSION}

SHARED_LIBS =		KF5ItemViews		6.1

WANTLIB = ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
