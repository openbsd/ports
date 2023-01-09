COMMENT =	modern music server and streamer

MODGO_MODNAME =	github.com/navidrome/navidrome
MODGO_VERSION =	v0.48.0

DISTNAME =	navidrome-${MODGO_VERSION}

CATEGORIES =	audio

HOMEPAGE =	https://www.navidrome.org/

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# Built by running "npm i; npm run build" in ${WRKSRC}/ui;
# tar -czvf navidrome-build-${MODGO_VERSION}.tar.gz build/
#
# Do this part as a normal user in their $HOME. It doesn't work as the
# `_pbuild` user. You will need very liberal -d ulimits too.
DISTFILES +=		navidrome-build-${MODGO_VERSION}.tar.gz:0

MASTER_SITES0 =		https://theunixzoo.co.uk/distfiles/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} pthread z c m tag

LIB_DEPENDS =		audio/taglib

RUN_DEPENDS =		graphics/ffmpeg

MODULES =		lang/go

SUBST_VARS =		VARBASE

post-extract:
	cd ${WRKSRC} && tar -C ${WRKSRC}/ui/ -zxf \
		${FULLDISTDIR}/navidrome-build-${MODGO_VERSION}.tar.gz

.include "modules.inc"

.include <bsd.port.mk>
