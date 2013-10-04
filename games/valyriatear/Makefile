# $OpenBSD: Makefile,v 1.4 2013/10/04 18:12:09 bcallah Exp $

V =		0.6.0
COMMENT =	free J-RPG game
DISTNAME =	ValyriaTear-${V}
PKGNAME =	valyriatear-${V}
CATEGORIES =	games x11

HOMEPAGE =	http://valyriatear.blogspot.com/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Main game is GPLv2+
# Art/music a variety of CC and GPL.
# Fonts are OFL 1.1
# For specific details, see the LICENSES file.
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU ICE SDL SDL_image SDL_ttf SM X11 Xext c
WANTLIB += m ogg openal png pthread vorbis vorbisfile z
WANTLIB += ${MODLUA_WANTLIB}

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=valyriatear/}

MODULES =	devel/cmake \
		devel/gettext \
		gcc4 \
		lang/lua

MODGCC4_ARCHS =	*
MODGCC4_LANGS =	c c++

BUILD_DEPENDS =	devel/boost>=1.52

LIB_DEPENDS =	audio/libogg \
		audio/libvorbis \
		audio/openal \
		devel/sdl-image \
		devel/sdl-ttf

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

WRKDIST =	${WRKDIR}/ValyriaTear-${V}
WRKSRC =	${WRKDIST}

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/valyriatear
	${INSTALL_DATA} ${WRKSRC}/{COPYING.{CC{-BY-3,-BY-SA-3,0},GPL-{2,3}},LICENSES,MANUAL} ${PREFIX}/share/doc/valyriatear
	${INSTALL_DATA} ${WRKSRC}/img/fonts/{GPL,OFL-1.1}.txt ${PREFIX}/share/doc/valyriatear
	${INSTALL_MAN} ${WRKSRC}/doc/valyriatear.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
