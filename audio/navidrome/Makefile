COMMENT =	modern music server and streamer

V =	0.64.2
MODGO_MODNAME =	github.com/navidrome/navidrome
MODGO_VERSION =	v${V}

DISTNAME =	navidrome-${MODGO_VERSION}

CATEGORIES =	audio

HOMEPAGE =	https://www.navidrome.org/

MAINTAINER =	Igor Zornik <mocheryl@mocheryl.org>

# To generate for a new version, bump V, run "make dist" and upload the
# resulting .tar.gz. Make sure your data area limit is adequately high enough.
# Setting it like 'ulimit -Sd $((4 * 1024 * 1024))' should suffice.
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
# https://github.com/navidrome/navidrome/pull/5606 and
# https://github.com/ebitengine/purego/issues/454 for additional information.
GO_TAGS +=		nodynamic

MODGO_FLAGS +=		-tags "${GO_TAGS}"
MODGO_LDFLAGS +=	-X github.com/navidrome/navidrome/consts.gitSha=10114574
MODGO_LDFLAGS +=	-X github.com/navidrome/navidrome/consts.gitTag=${MODGO_VERSION}

dist:
	tmp=`mktemp -d`; \
	cd $$tmp/; \
	ftp https://github.com/navidrome/navidrome/archive/refs/tags/${MODGO_VERSION}.tar.gz; \
	tar xvvzf ${MODGO_VERSION}.tar.gz; \
	cd navidrome-$V/ui/ && npm ci && npm run build; \
	cd ../..; \
	tar -cvvf navidrome-build-${MODGO_VERSION}.tar -C navidrome-$V/ui/ build/; \
	gzip -9vo navidrome-build-${MODGO_VERSION}.tar.gz navidrome-build-${MODGO_VERSION}.tar; \
	ls -l navidrome-build-${MODGO_VERSION}.tar.gz

post-extract:
	@cd ${WRKSRC} && ${TAR} -C ${WRKSRC}/ui/ -zxf \
		${FULLDISTDIR}/navidrome-build-${MODGO_VERSION}.tar.gz

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/navidrome \
		${PREFIX}/share/doc/navidrome
	${SUBST_CMD} -c -m 755 ${FILESDIR}/navidrome.toml \
		${PREFIX}/share/examples/navidrome/navidrome.toml
	${INSTALL_DATA} ${WRKSRC}/server/jellyfin/README.md \
		${PREFIX}/share/doc/navidrome/jellyfin.md

.include "modules.inc"

.include <bsd.port.mk>
