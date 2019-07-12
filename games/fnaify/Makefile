# $OpenBSD: Makefile,v 1.5 2019/07/12 20:46:17 sthen Exp $

# Don't bother on non-mono archs.
ONLY_FOR_ARCHS =	${MONO_ARCHS}

COMMENT =	script to configure FNA games to run on OpenBSD
DISTNAME =	fnaify-1.3
CATEGORIES =	games

HOMEPAGE =	https://www.PlayOnBSD.com
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

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

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/fnaify ${PREFIX}/bin

.include <bsd.port.mk>
