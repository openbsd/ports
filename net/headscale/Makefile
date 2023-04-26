ONLY_FOR_ARCHS =	amd64 arm64
# modernc.org/libc has limited arch support
# 1.21.5 fails on i386 (../../../go/pkg/mod/modernc.org/sqlite@v1.20.0/lib/mutex.go:220:7)

COMMENT =	open source implementation of the Tailscale control server

MODGO_MODNAME =	github.com/juanfont/headscale
MODGO_VERSION =	v0.22.1

DISTNAME =	headscale-${MODGO_VERSION}

CATEGORIES =	net

HOMEPAGE =	https://github.com/juanfont/headscale

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# BSD-3
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =		lang/go
MODGO_LDFLAGS +=	-X ${MODGO_MODNAME}/cmd/headscale/cli.Version=$\
			${MODGO_VERSION:S/v//}

WRKDIST =	${WRKSRC}

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/headscale ${PREFIX}/bin

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/headscale
	${INSTALL_DATA} ${WRKSRC}/derp-example.yaml \
		${PREFIX}/share/examples/headscale/
	${SUBST_DATA} ${WRKSRC}/config-example.yaml \
		${PREFIX}/share/examples/headscale/config-example.yaml

.include "modules.inc"

.include <bsd.port.mk>
