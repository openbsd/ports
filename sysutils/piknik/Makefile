COMMENT =	copy/paste clipboard that works over the network

MODGO_MODNAME =	github.com/jedisct1/piknik
MODGO_VERSION = v0.0.0-20241212092534-10f6dec9bb45

V =		0.10.2
DISTNAME =	piknik-${V}

CATEGORIES =	net sysutils

MAINTAINER =	Volker Schlecht <openbsd-ports@schlecht.dev>
# ISC
PERMIT_PACKAGE =Yes

MODULES =	lang/go

WANTLIB += c pthread

.include "modules.inc"

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/piknik && \
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/piknik
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/piknik && \
	${INSTALL_DATA} ${FILESDIR}/piknik.toml ${PREFIX}/share/examples/piknik

.include <bsd.port.mk>
