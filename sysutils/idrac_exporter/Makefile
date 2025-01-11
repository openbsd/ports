COMMENT =		prometheus exporter for Dell iDRAC

MODGO_MODNAME =		github.com/mrlhansen/idrac_exporter
MODGO_VERSION =		v1.4.4

DISTNAME =		idrac_exporter-${MODGO_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/mrlhansen/idrac_exporter

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/idrac_exporter
	${INSTALL_DATA} ${WRKSRC}/sample-config.yml \
		${PREFIX}/share/examples/idrac_exporter

.include "modules.inc"
.include <bsd.port.mk>
