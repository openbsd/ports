# $OpenBSD: Makefile,v 1.1.1.1 2018/07/29 03:48:43 bcallah Exp $

COMMENT =	free clone of Dink Smallwood game
DISTNAME =	freedink-108.4
PKGNAME =	freedink-1.08.4

WANTLIB += SDL SDL_gfx SDL_image SDL_mixer SDL_ttf c fontconfig
WANTLIB += freetype iconv intl m pthread z zip zzip

BUILD_DEPENDS =	archivers/zip \
		devel/help2man \
		devel/check

LIB_DEPENDS =	archivers/libzip \
		archivers/zziplib \
		devel/gettext \
		devel/sdl-image \
		devel/sdl-mixer \
		devel/sdl-gfx \
		devel/sdl-ttf

RUN_DEPENDS =	devel/desktop-file-utils \
		games/freedink/data

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
