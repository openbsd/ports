# $OpenBSD: Makefile,v 1.14 2011/06/25 18:58:11 jasper Exp $

COMMENT-main =	free open source 2D MMORPG
COMMENT-music =	music addon for TMW

DISTNAME =	tmw-0.5.2

V_MUSIC =	0.3

PKGNAME-main =	${DISTNAME}
PKGNAME-music =	tmw-music-${V_MUSIC}

CATEGORIES =	games x11

DISTFILES =	${DISTNAME}.tar.bz2 \
		tmwmusic-${V_MUSIC}.tar.gz

HOMEPAGE =	http://www.themanaworld.org/

MAINTAINER =	Jonathan Armani <armani@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL SDL SDL_image SDL_mixer SDL_net SDL_ttf c curl guichan 
WANTLIB += guichan_sdl m physfs png pthread stdc++ xml2 z 
WANTLIB += GLU ICE SM X11 Xext intl SDL_gfx


MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=themanaworld/}

MULTI_PACKAGES =-main -music

MODULES =	devel/cmake

RUN_DEPENDS =	devel/desktop-file-utils \
		devel/gettext
LIB_DEPENDS =	devel/sdl-gfx \
		devel/sdl-image \
		devel/sdl-net \
		devel/sdl-mixer \
		devel/sdl-ttf \
		devel/guichan \
		net/curl \
		devel/libidn \
		devel/physfs \
		textproc/libxml

WANTLIB-music =
RUN_DEPENDS-music =	${BASE_PKGPATH}
LIB_DEPENDS-music =
PKG_ARCH-music =	*

CONFIGURE_STYLE =	cmake

WRKSRC = 	${WRKDIR}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/tmw/data/music
	find ${WRKDIR}/tmwmusic-${V_MUSIC}/data/music -type f \
		-exec ${INSTALL_DATA} {} ${PREFIX}/share/tmw/data/music \;

.include <bsd.port.mk>
