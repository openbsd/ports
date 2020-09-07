# $OpenBSD: Makefile,v 1.12 2020/09/07 14:48:48 rsadowski Exp $

COMMENT =		extensions for the Qt model-view framework
DISTNAME =		kitemviews-${VERSION}

SHARED_LIBS =		KF5ItemViews		6.0

WANTLIB = ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets m

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
