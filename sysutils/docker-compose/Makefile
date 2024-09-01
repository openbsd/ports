COMMENT =		Define and run multi-container applications with Docker

MODGO_MODNAME =		github.com/docker/compose/v2
MODGO_VERSION =		v2.29.1
DISTNAME =		docker-compose-${MODGO_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://docs.docker.com/compose/

MAINTAINER =		Kirill A. Korinsky <kirill@korins.ky>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go
MODGO_LDFLAGS =		-X ${MODGO_MODNAME}/internal.Version=${MODGO_VERSION}

do-install:
	ln -s ${TRUEPREFIX}/libexec/docker/cli-plugins/docker-compose \
		${PREFIX}/bin/docker-compose
	${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/docker/cli-plugins
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/cmd \
		${PREFIX}/libexec/docker/cli-plugins/docker-compose

.include "modules.inc"
.include <bsd.port.mk>
