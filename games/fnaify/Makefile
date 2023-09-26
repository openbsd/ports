# Don't bother on non-mono archs.
ONLY_FOR_ARCHS =	${MONO_ARCHS}

V =		3.1
COMMENT =	run FNA/XNA games on OpenBSD
DISTNAME =	fnaify-${V}
CATEGORIES =	games

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/rfht/fnaify/releases/download/${V}/

# it may be possible to drop audio/openal and a few others when FAudio
# has been disseminated to all FNA games
RUN_DEPENDS =	audio/faudio \
		audio/libogg \
		audio/libvorbis \
		audio/openal \
		devel/sdl2-image \
		games/fna \
		games/steamworks-nosteam \
		graphics/fna3d \
		graphics/jpeg \
		graphics/png \
		lang/mono \
		misc/libstubborn \
		multimedia/libtheora \
		multimedia/libtheorafile \
		multimedia/libtheoraplay

NO_BUILD =	Yes
NO_TEST =	Yes

do-configure:
	sed -i 's,\/usr/\local,${LOCALBASE},g' ${WRKSRC}/fnaify

.include <bsd.port.mk>
