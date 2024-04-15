COMMENT =	modern music server and streamer

MODGO_MODNAME =	github.com/navidrome/navidrome
MODGO_VERSION =	v0.51.1

DISTNAME =	navidrome-${MODGO_VERSION}

CATEGORIES =	audio

HOMEPAGE =	https://www.navidrome.org/

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# Built by running "npm i; npm run build" in ${WRKSRC}/ui;
# tar -czvf navidrome-build-${MODGO_VERSION}.tar.gz build/
#
# Do this part as a normal user in their $HOME. It doesn't work as the
# `_pbuild` user. You will need very liberal -d ulimits too.
DISTFILES.zoo =		navidrome-build-${MODGO_VERSION}.tar.gz

SITES.zoo =		https://theunixzoo.co.uk/distfiles/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} pthread z c m tag

LIB_DEPENDS =		audio/taglib

RUN_DEPENDS =		graphics/ffmpeg

MODULES =		lang/go

post-extract:
	cd ${WRKSRC} && tar -C ${WRKSRC}/ui/ -zxf \
		${FULLDISTDIR}/navidrome-build-${MODGO_VERSION}.tar.gz

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/navidrome
	${SUBST_CMD} -c -m 755 ${FILESDIR}/navidrome.toml \
		${PREFIX}/share/examples/navidrome/navidrome.toml

.include "modules.inc"

.include <bsd.port.mk>
