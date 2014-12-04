# $OpenBSD: Makefile,v 1.8 2014/12/04 02:58:22 bcallah Exp $

V =		3.3.41
COMMENT =	desktop screenshot utility (make image)
DISTNAME =	maim-${V}
CATEGORIES =	graphics x11

GH_ACCOUNT =	naelstrof
GH_PROJECT =	maim
GH_TAGNAME =	v${V}
GH_COMMIT =	178b253e60c9ee40dab25eba141938c78d802a09

HOMEPAGE =	https://github.com/naelstrof/maim
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE Imlib2 SM X11 Xext Xfixes Xrandr c freetype m stdc++
WANTLIB += z

MODULES =	devel/cmake

LIB_DEPENDS =	graphics/imlib2

RUN_DEPENDS =	graphics/slop

CONFIGURE_ARGS =	-DCMAKE_INSTALL_MANDIR="${LOCALBASE}/man" \
			-DCMAKE_COMPRESS_MAN=False

NO_TEST =	Yes

.include <bsd.port.mk>
