COMMENT =		prometheus exporter for unbound

MODGO_MODNAME =		github.com/letsencrypt/unbound_exporter
MODGO_VERSION =		v0.4.6

DISTNAME =		unbound_exporter-${MODGO_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/letsencrypt/unbound_exporter

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

.include "modules.inc"
.include <bsd.port.mk>
