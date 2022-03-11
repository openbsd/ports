COMMENT =	observability backend for metrics and traces powered by SQL

V =		0.7.1
CDATE =		2021-12-03T15-45-58Z
CID =		493efa289605a1bf6c1c586595251bd4e0fdc162
SHORTCID =	${CID:C/(............).*/\1/}

MODGO_MODNAME =	github.com/timescale/promscale
MODGO_VERSION =	v0.0.0-${CDATE:C/[-TZ]//g}-${SHORTCID}

DISTNAME =	promscale-${MODGO_VERSION}
PKGNAME =	promscale-${V}

CATEGORIES =	sysutils

HOMEPAGE =	https://www.timescale.com/promscale

MAINTAINER =	Denis Fondras <denis@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE = Yes

MODULES=	lang/go

.include "modules.inc"

.include <bsd.port.mk>
