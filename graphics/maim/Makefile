# $OpenBSD: Makefile,v 1.11 2015/06/23 01:45:34 bcallah Exp $

V =		3.4.43
COMMENT =	desktop screenshot utility (make image)
DISTNAME =	maim-${V}
CATEGORIES =	graphics x11

GH_ACCOUNT =	naelstrof
GH_PROJECT =	maim
GH_TAGNAME =	v${V}

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE Imlib2 SM X11 Xext Xfixes Xrandr c m stdc++

MODULES =	devel/cmake

LIB_DEPENDS =	graphics/imlib2

RUN_DEPENDS =	graphics/slop

CONFIGURE_ARGS =	-DCMAKE_INSTALL_MANDIR="${LOCALBASE}/man" \
			-DCMAKE_COMPRESS_MAN=False

NO_TEST =	Yes

.include <bsd.port.mk>
