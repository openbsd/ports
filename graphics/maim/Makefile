# $OpenBSD: Makefile,v 1.6 2014/11/28 23:08:24 bcallah Exp $

V =		2.3.38
COMMENT =	desktop screenshot utility (make image)
DISTNAME =	maim-${V}
CATEGORIES =	graphics x11

GH_ACCOUNT =	naelstrof
GH_PROJECT =	maim
GH_TAGNAME =	v${V}
GH_COMMIT =	b2aaaff52b0bcf5a08030b903153bd951633e13e

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
