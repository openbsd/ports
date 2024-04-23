COMMENT =		Docker CLI plugin for extended build capabilities

V =			0.14.0
GH_ACCOUNT =		docker
GH_PROJECT =		buildx
GH_TAGNAME =		v${V}
PKGNAME =		docker-${DISTNAME}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/docker/buildx

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += 		c pthread

MODULES =		lang/go
GO_PKGNAME =		github.com/docker/buildx
MODGO_GOPATH =		${MODGO_WORKSPACE}
MODGO_LDFLAGS =		-X ${GO_PKGNAME}/version.Version=v${V}

WRKSRC =		${MODGO_WORKSPACE}/src/${GO_PKGNAME}
ALL_TARGET =		${GO_PKGNAME}/cmd/buildx

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/docker/cli-plugins
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/buildx \
		${PREFIX}/libexec/docker/cli-plugins/docker-buildx

.include <bsd.port.mk>
