# $OpenBSD: Makefile,v 1.1.1.1 2013/04/16 02:11:25 bcallah Exp $

V =		0.1
COMMENT =	free interpreter for RPG Maker 2000/2003 and EasyRPG games
DISTFILES =	EasyRPG_Player-${V}-src.zip \
		EasyRPG_Readers-${V}-src.zip
PKGNAME =	easyrpg-${V}
CATEGORIES =	games x11

HOMEPAGE =	https://easy-rpg.org/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += FLAC SDL SDL_mixer boost_chrono-mt boost_system-mt boost_thread-mt
WANTLIB += c expat freetype iconv jpeg m ogg openal pixman-1 png pthread
WANTLIB += sndfile stdc++ vorbis vorbisenc z ${MODLUA_WANTLIB}

MASTER_SITES =	${HOMEPAGE}downloads/player/

MODULES +=	devel/cmake \
		lang/lua \
		lang/ruby

LIB_DEPENDS =	audio/libsndfile \
		audio/openal \
		devel/boost \
		devel/sdl-mixer \
		graphics/jpeg \
		graphics/png

# Sadly, this is needed for midi playback.
RUN_DEPENDS =	audio/timidity

# make test seems bogus, disabling it.
NO_TEST =	Yes

WRKDIST =	${WRKDIR}/Player-${V}

post-extract:
	mv ${WRKDIR}/Readers-${V} ${WRKSRC}/lib/readers

do-configure:
	cd ${WRKBUILD} && cmake ${WRKSRC}/builds/cmake

.include <bsd.port.mk>
