COMMENT =		command-line interface for Hetzner Cloud
V =			1.29.0

MODGO_MODNAME =		github.com/hetznercloud/cli
MODGO_VERSION =		v${V}

DISTNAME =		hcloud-${MODGO_VERSION}
PKGNAME =		hcloud-${V}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/hetznercloud/cli

MAINTAINER =		Stefan Hagen <sh+ports@codevoid.de>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/go

WANTLIB +=		c pthread

MODGO_LDFLAGS =	\
	-X github.com/hetznercloud/cli/internal/version.Version=${MODGO_VERSION}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/hcloud
	${INSTALL_DATA} ${WRKSRC}/examples/* ${PREFIX}/share/examples/hcloud
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/hcloud
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/hcloud/README.md

do-test:
	cd  ${WRKSRC} && ${MODGO_TEST_CMD} ./...

.include "modules.inc"

.include <bsd.port.mk>
