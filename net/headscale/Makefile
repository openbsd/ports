ONLY_FOR_ARCHS =	amd64
# this depends on modernc.org/libc; as of v1.16.8 it only has code to
# support amd64 on OpenBSD.
# 
# recheck when updating; 1.17 adds arm64 and 1.20 adds i386

COMMENT =	open source implementation of the Tailscale control server

MODGO_MODNAME =	github.com/juanfont/headscale
MODGO_VERSION =	v0.16.4

DISTNAME =	headscale-${MODGO_VERSION}

CATEGORIES =	net

HOMEPAGE =	https://github.com/juanfont/headscale

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# BSD-3
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go
MODGO_LDFLAGS +=	-X ${MODGO_MODNAME}/cmd/headscale/cli.Version=${MODGO_VERSION}

WRKDIST =	${WRKSRC}

SUBST_VARS +=	VARBASE

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/headscale
	${INSTALL_DATA} ${WRKSRC}/derp-example.yaml ${PREFIX}/share/examples/headscale/
	${SUBST_DATA} ${WRKSRC}/config-example.yaml \
		${PREFIX}/share/examples/headscale/config-example.yaml

.include "modules.inc"

.include <bsd.port.mk>
