# $OpenBSD: Makefile,v 1.6 2022/02/16 12:31:08 abieber Exp $

COMMENT =	open source implementation of the Tailscale control server

MODGO_MODNAME =	github.com/juanfont/headscale
MODGO_VERSION =	v0.12.4

DISTNAME =	headscale-${MODGO_VERSION}

CATEGORIES =	net

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD-3
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go
MODGO_LDFLAGS =		-X ${MODGO_MODNAME}/cmd/headscale/cli.version=${MODGO_VERSION}

WRKDIST =	${WRKSRC}

SUBST_VARS +=	VARBASE

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/headscale
	${INSTALL_DATA} ${WRKSRC}/derp-example.yaml ${PREFIX}/share/examples/headscale/
	${SUBST_DATA} ${WRKSRC}/config-example.yaml \
		${PREFIX}/share/examples/headscale/config-example.yaml

.include "modules.inc"

.include <bsd.port.mk>
