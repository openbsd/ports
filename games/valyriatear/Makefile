# $OpenBSD: Makefile,v 1.25 2018/10/27 07:22:47 bentley Exp $

COMMENT =	free J-RPG game
CATEGORIES =	games x11
REVISION =	10

PKGNAME =	valyriatear-${GH_TAGNAME}

GH_ACCOUNT =	Bertram25
GH_PROJECT =	ValyriaTear
GH_TAGNAME =	1.0.0

HOMEPAGE =	https://valyriatear.blogspot.com/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Main game is GPLv2+
# Art/music a variety of CC and GPL.
# Fonts are OFL 1.1
# For specific details, see the LICENSES file.
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU ICE SDL SDL_image SDL_ttf SM X11 Xext c iconv intl m
WANTLIB += ogg openal png pthread ${COMPILER_LIBCXX} vorbis vorbisfile
WANTLIB += z ${MODLUA_WANTLIB}

COMPILER =		base-clang ports-gcc base-gcc

MODULES =	devel/cmake \
		lang/lua

BUILD_DEPENDS =	devel/boost>=1.52 \
		devel/gettext-tools

LIB_DEPENDS =	audio/libogg \
		audio/libvorbis \
		audio/openal \
		devel/sdl-image \
		devel/sdl-ttf

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

# PCH (Precompiled Headers) are known to be broken so disable
# the use of PCH.
CONFIGURE_ARGS+= -DUSE_PCH_COMPILATION=Off

WRKDIST =	${WRKDIR}/ValyriaTear-${GH_TAGNAME}

NO_TEST =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/valyriatear
	${INSTALL_DATA} ${WRKSRC}/{COPYING.{CC{-BY-3,-BY-SA-3,0},GPL-{2,3}},LICENSES,MANUAL} ${PREFIX}/share/doc/valyriatear
	${INSTALL_DATA} ${WRKSRC}/img/fonts/{GPL,OFL-1.1}.txt ${PREFIX}/share/doc/valyriatear
	${INSTALL_MAN} ${WRKSRC}/doc/valyriatear.6 ${PREFIX}/man/man6

.include <bsd.port.mk>
