# $OpenBSD: Makefile,v 1.7 2014/11/29 15:30:35 bcallah Exp $

V =		3.3.39
COMMENT =	desktop screenshot utility (make image)
DISTNAME =	maim-${V}
CATEGORIES =	graphics x11

GH_ACCOUNT =	naelstrof
GH_PROJECT =	maim
GH_TAGNAME =	v${V}
GH_COMMIT =	17c3b2771ce3709c534bb3c7d45e1e02c89b8cff

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

.include <bsd.port.mk>
