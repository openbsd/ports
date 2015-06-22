# $OpenBSD: Makefile,v 1.1.1.1 2015/06/22 01:58:54 bcallah Exp $

V =		0.5
COMMENT =	puzzle game with similar gameplay to Tetris Attack
DISTNAME =	freeblocks-${V}
CATEGORIES =	games x11

GH_ACCOUNT =	dorkster
GH_PROJECT =	freeblocks
GH_TAGNAME =	v${V}

HOMEPAGE =	https://github.com/dorkster/freeblocks
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL SDL_image SDL_mixer SDL_ttf c pthread

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-ttf

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_ARGS =	-DDATADIR="${PREFIX}/share/freeblocks"

NO_TEST =	Yes

.include <bsd.port.mk>
