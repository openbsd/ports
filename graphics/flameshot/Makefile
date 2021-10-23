# $OpenBSD: Makefile,v 1.6 2021/10/17 18:35:53 denis Exp $

COMMENT =	powerful yet simple to use screenshot software
CATEGORIES =	graphics x11

GH_ACCOUNT =	flameshot-org
GH_PROJECT =	flameshot
GH_TAGNAME =	v0.10.1

HOMEPAGE =	https://flameshot.org/
MAINTAINER =	Denis Fondras <denis@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Svg Qt5Widgets c m

MODULES =	devel/cmake \
		x11/qt5

LIB_DEPENDS =	x11/qt5/qtsvg

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_ARGS +=	-DENABLE_CACHE=OFF

NO_TEST =	Yes

.include <bsd.port.mk>
