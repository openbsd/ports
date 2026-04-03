COMMENT =	modern music server and streamer

MODGO_MODNAME =	github.com/navidrome/navidrome
MODGO_VERSION =	v0.60.3

DISTNAME =	navidrome-${MODGO_VERSION}

CATEGORIES =	audio

HOMEPAGE =	https://www.navidrome.org/

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# Built by running "npm i; npm run build" in the `ui` directory of the source
# code and then tarring up the resulting `build` directory:
# `tar -czvf navidrome-build-${MODGO_VERSION}.tar.gz build/`
#
# But do this as a normal user, outside of the ports tree. It doesn't work as
# the `_pbuild` user. You will need very liberal -d ulimits too.
#
# If it complains that update-workbox.sh isn't executable, just
# `chmod +x` it and it works.
DISTFILES.zoo =		navidrome-build-${MODGO_VERSION}.tar.gz

SITES.zoo =		https://theunixzoo.co.uk/distfiles/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} pthread z c m tag

LIB_DEPENDS =		audio/taglib

RUN_DEPENDS =		graphics/ffmpeg

MODULES =		lang/go

# Error: ./main.go:16:16: undefined: buildtags.NETGO
# Inclusion of 'netgo' in build tags is enforced by the project. See
# https://github.com/navidrome/navidrome/issues/700 for additional
# information.
GO_TAGS =		netgo
MODGO_FLAGS +=		-tags "${GO_TAGS}"

post-extract:
	cd ${WRKSRC} && tar -C ${WRKSRC}/ui/ -zxf \
		${FULLDISTDIR}/navidrome-build-${MODGO_VERSION}.tar.gz

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/navidrome
	${SUBST_CMD} -c -m 755 ${FILESDIR}/navidrome.toml \
		${PREFIX}/share/examples/navidrome/navidrome.toml

.include "modules.inc"

.include <bsd.port.mk>
