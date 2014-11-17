# $OpenBSD: Makefile,v 1.4 2014/11/17 22:45:49 bcallah Exp $

V =		2.3.36
COMMENT =	desktop screenshot utility (make image)
DISTNAME =	maim-${V}
CATEGORIES =	graphics x11

GH_ACCOUNT =	naelstrof
GH_PROJECT =	maim
GH_TAGNAME =	v${V}
GH_COMMIT =	14f993643491b0e4d7e89df407c37712bbfbfdfa

HOMEPAGE =	https://github.com/naelstrof/maim
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE Imlib2 SM X11 Xext Xfixes Xrandr c freetype m stdc++
WANTLIB += z

MODULES =	devel/cmake

LIB_DEPENDS =	graphics/imlib2

RUN_DEPENDS =	graphics/slop

NO_TEST =	Yes

pre-configure:
	perl -pi -e "s,/usr/bin,${PREFIX}/bin,g" ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
