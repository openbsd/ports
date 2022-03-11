COMMENT =	modern music server and streamer

MODGO_MODNAME =	github.com/navidrome/navidrome
MODGO_VERSION =	v0.47.5

DISTNAME =	navidrome-${MODGO_VERSION}

CATEGORIES =	audio

HOMEPAGE =	https://www.navidrome.org/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# Built by running "npm i; npm run build" in ${WRKSRC}/ui;
# rm -rf ${WRKSRC}/ui/node_modules; 
# tar -czvf navidrome-build-${MODGO_VERSION}.tar.gz build/
DISTFILES +=		navidrome-build-${MODGO_VERSION}.tar.gz:0

MASTER_SITES0 =		https://deftly.net/dist/

# GPLv3
PERMIT_PACKAGE =	Yes

LIB_DEPENDS =		audio/taglib

RUN_DEPENDS =		graphics/ffmpeg

MODULES =		lang/go

SUBST_VARS =		VARBASE

WANTLIB += c m tag

post-extract:
	cd ${WRKSRC} && tar -C ${WRKSRC}/ui/ -zxf \
		${FULLDISTDIR}/navidrome-build-${MODGO_VERSION}.tar.gz

.include "modules.inc"

.include <bsd.port.mk>
