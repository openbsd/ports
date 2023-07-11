COMMENT =	CLI to query influxdb v2 databases

MODGO_VERSION=	v2.7.3
MODGO_MODNAME=	github.com/influxdata/influx-cli/v2
GH_ACCOUNT =	influxdata
GH_PROJECT =	influx-cli
GH_TAGNAME =	${MODGO_VERSION}

HOMEPAGE =	https://influxdata.com

CATEGORIES =		databases

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/go

MODGO_LDFLAGS =	-X main.version=${MODGO_VERSION:S/v//}

.include "modules.inc"

WANTLIB += c pthread

# for patches to apply
WRKDIST =	${WRKSRC}

NO_TEST =	Yes

.include <bsd.port.mk>
