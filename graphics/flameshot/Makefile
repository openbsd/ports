# $OpenBSD: Makefile,v 1.1.1.1 2019/05/05 18:52:24 denis Exp $

COMMENT =	powerful yet simple to use screenshot software
CATEGORIES =	graphics x11

GH_ACCOUNT =	lupoDharkael
GH_PROJECT =	flameshot
GH_TAGNAME =	v0.6.0

HOMEPAGE =	https://flameshot.js.org/
MAINTAINER =	Denis Fondras <denis@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Svg Qt5Widgets c m

MODULES =	devel/qmake \
		x11/qt5

LIB_DEPENDS =	x11/qt5/qtsvg

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

NO_TEST =	Yes

.include <bsd.port.mk>
