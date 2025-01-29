COMMENT =		prometheus exporter for dhcpd(8) leases file

MODGO_MODNAME =		github.com/DRuggeri/dhcpd_leases_exporter
MODGO_VERSION =		v0.2.3

DISTNAME =		dhcpd_leases_exporter-${MODGO_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/DRuggeri/dhcpd_leases_exporter

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =		lang/go

WRKDIST =		${WRKSRC}

.include "modules.inc"
.include <bsd.port.mk>
