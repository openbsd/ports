COMMENT =		prometheus exporter for TLS cetificates

MODGO_MODNAME =		github.com/ribbybibby/ssl_exporter/v2
MODGO_VERSION =		v2.4.3

DISTNAME =		ssl_exporter-${MODGO_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/ribbybibby/ssl_exporter

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

WRKDIST =		${WRKSRC}

.include "modules.inc"
.include <bsd.port.mk>
