ONLY_FOR_ARCHS =	amd64 i386 arm64
# this depends on modernc.org/libc; version v1.21.5 supports amd64, i386 and
# arm64 only on OpenBSD.

COMMENT =	open source implementation of the Tailscale control server

MODGO_MODNAME =	github.com/juanfont/headscale
MODGO_VERSION =	v0.18.0

DISTNAME =	headscale-${MODGO_VERSION}

CATEGORIES =	net

HOMEPAGE =	https://github.com/juanfont/headscale

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# BSD-3
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go
MODGO_LDFLAGS +=	-X ${MODGO_MODNAME}/cmd/headscale/cli.Version=$\
			${MODGO_VERSION:S/v//}

WRKDIST =	${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/headscale
	${INSTALL_DATA} ${WRKSRC}/derp-example.yaml ${PREFIX}/share/examples/headscale/
	${SUBST_DATA} ${WRKSRC}/config-example.yaml \
		${PREFIX}/share/examples/headscale/config-example.yaml

.include "modules.inc"

.include <bsd.port.mk>
