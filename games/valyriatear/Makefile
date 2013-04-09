# $OpenBSD: Makefile,v 1.3 2013/04/09 14:03:05 bcallah Exp $

V =		0.5.1
COMMENT =	free J-RPG game
DISTNAME =	valyriatear-${V}
CATEGORIES =	games x11

HOMEPAGE =	http://valyriatear.blogspot.com/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Main game, some artwork, some music is GPLv2+
# Rest of artwork, some music is CC by SA 3.0
# A few music files are GPLv3
# Fonts are OFL 1.1
# For specific details, see the LICENSES file.
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += GL GLU ICE SDL SDL_image SDL_ttf SM X11 Xext c jpeg
WANTLIB += m ogg openal png pthread stdc++ vorbis vorbisfile z
WANTLIB += ${MODLUA_WANTLIB}

MASTER_SITES =	https://github.com/Bertram25/ValyriaTear/archive/${V}/

MODULES =	devel/cmake \
		devel/gettext \
		lang/lua

BUILD_DEPENDS =	devel/boost>=1.52

LIB_DEPENDS =	audio/libogg \
		audio/libvorbis \
		audio/openal \
		devel/sdl-image \
		devel/sdl-ttf

RUN_DEPENDS =	devel/desktop-file-utils

WRKDIST =	${WRKDIR}/ValyriaTear-${V}
WRKSRC =	${WRKDIST}

NO_TEST =	Yes

# We need two extra FindModule.cmake other than what's provided.
# Otherwise we get a bunch of undefined references linker errors.
# I pushed this upstream; next update this goes away.
post-extract:
	cp ${FILESDIR}/*.cmake ${WRKSRC}/CMake/Modules/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/valyriatear
	${INSTALL_DATA} ${WRKSRC}/{COPYING,LICENSES,MANUAL} ${PREFIX}/share/doc/valyriatear
	${INSTALL_DATA} ${WRKSRC}/img/fonts/{GPL,OFL-1.1}.txt ${PREFIX}/share/doc/valyriatear

.include <bsd.port.mk>
