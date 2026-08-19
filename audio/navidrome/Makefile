COMMENT =	modern music server and streamer

MODGO_MODNAME =	github.com/navidrome/navidrome
MODGO_VERSION =	v0.63.2

DISTNAME =	navidrome-${MODGO_VERSION}

CATEGORIES =	audio

HOMEPAGE =	https://www.navidrome.org/

MAINTAINER =	Igor Zornik <mocheryl@mocheryl.org>

# Built by running "npm i; npm run build" in the `ui` directory of the source
# code and then tarring up the resulting `build` directory:
# `tar -czvf navidrome-build-${MODGO_VERSION}.tar.gz build/`
#
# But do this as a normal user, outside of the ports tree. It doesn't work as
# the `_pbuild` user. You will need very liberal -d ulimits too.
#
# If it complains that update-workbox.sh isn't executable, just
# `chmod +x` it and it works.
DISTFILES.mocheryl =		navidrome-build-${MODGO_VERSION}.tar.gz

SITES.mocheryl =		https://ports.mocheryl.org/releases/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += c m pthread

RUN_DEPENDS =		graphics/ffmpeg

MODULES =		lang/go

# Error: ./main.go:16:16: undefined: buildtags.NETGO
# Inclusion of 'netgo' in build tags is enforced by the project. See
# https://github.com/navidrome/navidrome/issues/700 for additional
# information.
GO_TAGS +=		netgo

# Error: ./main.go:17:16: undefined: buildtags.SQLITE_FTS5
# Inclusion of 'sqlite_fts5' in build tags is enforced by the project. See
# https://github.com/navidrome/navidrome/issues/255 for additional
# information.
GO_TAGS +=		sqlite_fts5

# ../../../go/pkg/mod/github.com/ebitengine/purego@v0.10.1/struct_amd64.go:12:46: undefined: syscall15Args
# Disable build on unsupported platforms. See
# https://github.com/navidrome/navidrome/pull/5606 for additional information.
GO_TAGS +=		nodynamic

MODGO_FLAGS +=		-tags "${GO_TAGS}"
MODGO_LDFLAGS +=	-X github.com/navidrome/navidrome/consts.gitSha=be10f89c
MODGO_LDFLAGS +=	-X github.com/navidrome/navidrome/consts.gitTag=${MODGO_VERSION}

post-extract:
	cd ${WRKSRC} && tar -C ${WRKSRC}/ui/ -zxf \
		${FULLDISTDIR}/navidrome-build-${MODGO_VERSION}.tar.gz

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/navidrome
	${SUBST_CMD} -c -m 755 ${FILESDIR}/navidrome.toml \
		${PREFIX}/share/examples/navidrome/navidrome.toml

.include "modules.inc"

.include <bsd.port.mk>
