COMMENT =	plugin-driven server agent for collecting metrics

BROKEN-arm =	build fails, no error message
BROKEN-i386 =	/usr/local/go/pkg/tool/openbsd_386/link: mapping output file failed: cannot allocate memory

MODGO_VERSION=	v1.30.0
MODGO_MODNAME=	github.com/influxdata/telegraf
GH_ACCOUNT =	influxdata
GH_PROJECT =	telegraf
GH_TAGNAME =	${MODGO_VERSION}
HOMEPAGE =	https://www.influxdata.com/time-series-platform/telegraf/

MAINTAINER =	Lucas Raab <tuftedocelot@fastmail.fm>

CATEGORIES =		sysutils

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/go

MODGO_LDFLAGS =	-X github.com/influxdata/telegraf/internal.Version=${MODGO_VERSION:S/v//}
WANTLIB +=	c pthread
WRKDIST=	${WRKSRC}

.include "modules.inc"

# generate config
post-build:
	${MODGO_WORKSPACE}/bin/telegraf config > ${WRKSRC}/etc/telegraf.conf

do-install:
	${MODGO_INSTALL_TARGET}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/telegraf/
	${INSTALL_DATA} ${WRKSRC}/etc/telegraf.conf \
		${PREFIX}/share/examples/telegraf/

.include <bsd.port.mk>
