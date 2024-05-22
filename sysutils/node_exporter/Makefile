COMMENT =		prometheus exporter for hardware and OS metrics

MODGO_MODNAME =		github.com/prometheus/node_exporter
MODGO_VERSION =		v1.8.1

DISTNAME =		node_exporter-${MODGO_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://prometheus.io/

MAINTAINER =		Claudio Jeker <claudio@openbsd.org>
# Apache 2.0
PERMIT_PACKAGE =	Yes

WRKDIST =		${WRKSRC}

WANTLIB =		c pthread

MODULES=		lang/go

MODGO_LDFLAGS =	-X github.com/prometheus/common/version.Version=${MODGO_VERSION:S/v//} \
		-X github.com/prometheus/common/version.Revision=non-git \
		-X github.com/prometheus/common/version.Branch=non-git \
		-X github.com/prometheus/common/version.BuildDate=`date +%F` \
		-X github.com/prometheus/common/version.BuildUser=openbsd_ports 

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/node_exporter
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/node_exporter ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/node_exporter/
	${INSTALL_DATA} ${WRKSRC}/NOTICE ${PREFIX}/share/doc/node_exporter/

.include "modules.inc"
# updated from upstream's old version, also see patches
MODGO_MODULES +=	golang.org/x/sys	v0.15.0

.include <bsd.port.mk>
