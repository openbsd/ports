# $OpenBSD: Makefile,v 1.11 2020/03/23 18:01:09 rsadowski Exp $

COMMENT =		extensions for the Qt model-view framework
DISTNAME =		kitemviews-${VERSION}

SHARED_LIBS =		KF5ItemViews		5.0

WANTLIB = ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
