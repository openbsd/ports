# $OpenBSD: Makefile,v 1.7 2013/10/24 12:51:30 bcallah Exp $

V =		0.1.2
COMMENT =	free interpreter for RPG Maker 2000/2003 and EasyRPG games
DISTFILES =	easyrpg-player-${V}.tar.gz{${V}.tar.gz}:0 \
		easyrpg-readers-${V}.tar.gz{${V}.tar.gz}:1
PKGNAME =	easyrpg-${V}
CATEGORIES =	games x11

HOMEPAGE =	https://easy-rpg.org/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += FLAC SDL SDL_mixer c expat freetype jpeg m ogg openal
WANTLIB += pixman-1 png pthread sndfile stdc++ vorbis vorbisenc z

MASTER_SITES0 =	https://github.com/EasyRPG/Player/archive/
MASTER_SITES1 =	https://github.com/EasyRPG/Readers/archive/

MODULES +=	converters/libiconv \
		devel/cmake \
		lang/python \
		lang/ruby

# iconv is deprecated with ruby>1.8
MODRUBY_REV =	1.8

BUILD_DEPENDS =	${MODRUBY_ICONV_DEPENDS} \
		devel/boost

LIB_DEPENDS =	audio/libsndfile \
		audio/openal \
		devel/sdl-mixer \
		graphics/jpeg \
		graphics/png

# Sadly, this is needed for midi playback.
RUN_DEPENDS =	audio/timidity

# make test seems bogus, disabling it.
NO_TEST =	Yes

WRKDIST =	${WRKDIR}/Player-${V}

post-extract:
	mv ${WRKDIR}/Readers-${V} ${WRKDIST}/lib/readers

.include <bsd.port.mk>
