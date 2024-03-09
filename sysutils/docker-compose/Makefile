COMMENT =		Define and run multi-container applications with Docker

V =			2.24.5
GH_ACCOUNT =		docker
GH_PROJECT =		compose
GH_TAGNAME =		v${V}
PKGNAME =		docker-${DISTNAME}

CATEGORIES =		sysutils

HOMEPAGE =		https://docs.docker.com/compose/

DISTFILES.vendor =	docker-compose-vendor-${V}.tar.gz

SITES.vendor =		https://kirill.korins.ky/pub/distfiles/

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += 		c pthread

MODULES =		lang/go
GO_PKGNAME =		github.com/docker/compose/v2
MODGO_GOPATH =		${MODGO_WORKSPACE}
MODGO_LDFLAGS =		-X ${GO_PKGNAME}/internal.Version=v${V}

WRKSRC =		${MODGO_WORKSPACE}/src/${GO_PKGNAME}
ALL_TARGET =		${GO_PKGNAME}/cmd

do-install:
	ln -s ${TRUEPREFIX}/libexec/docker/cli-plugins/docker-compose \
		${PREFIX}/bin/docker-compose
	${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/docker/cli-plugins
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/cmd \
		${PREFIX}/libexec/docker/cli-plugins/docker-compose

vendor: patch
	cd ${WRKDIR}/compose-$V; \
	go mod tidy; \
	go mod vendor; \
	cd ..; \
	tar czf docker-compose-vendor-${V}.tar.gz compose-$V/vendor

.include <bsd.port.mk>
