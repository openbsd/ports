# $OpenBSD: Makefile,v 1.8 2020/04/12 13:37:32 thfr Exp $

# Don't bother on non-mono archs.
ONLY_FOR_ARCHS =	${MONO_ARCHS}

V =		2.2
COMMENT =	run FNA/XNA games on OpenBSD
DISTNAME =	fnaify-${V}
CATEGORIES =	games

HOMEPAGE =	https://www.PlayOnBSD.com
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/rfht/fnaify/releases/download/${V}/

# it may be possible to drop audio/openal and a few others when FAudio
# has been disseminated to all FNA games
RUN_DEPENDS =	audio/libogg \
		audio/libvorbis \
		audio/openal \
		devel/sdl2-image \
		games/steamworks-nosteam \
		graphics/jpeg \
		graphics/mojoshader \
		graphics/png \
		lang/mono \
		multimedia/libtheora \
		multimedia/libtheorafile \
		multimedia/libtheoraplay

NO_BUILD =	Yes
NO_TEST =	Yes

do-configure:
	sed -i 's,\/usr/\local,${LOCALBASE},g' ${WRKSRC}/fnaify

.include <bsd.port.mk>
