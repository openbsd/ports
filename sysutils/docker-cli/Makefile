COMMENT =		command-line tool for controlling Docker

V =			27.3.1
DIST_TUPLE =		github docker cli v${V} .
PKGNAME =		docker-${DISTNAME}

CATEGORIES =		sysutils

HOMEPAGE =		https://docs.docker.com/engine/reference/commandline/cli/

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += 		c pthread

MODULES =		lang/go
GO_PKGNAME =		github.com/docker/cli
MODGO_LDFLAGS =		-X ${GO_PKGNAME}/cli/version.Version=${V}

RUN_DEPENDS =		sysutils/docker-buildx

WRKSRC =		${MODGO_WORKSPACE}/src/${GO_PKGNAME}
ALL_TARGET =		${GO_PKGNAME}/cmd/docker

# for tests
PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
