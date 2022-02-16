# $OpenBSD: Makefile,v 1.1.1.1 2022/02/16 18:26:57 denis Exp $

COMMENT =	handles alerts sent by the Prometheus server

MODGO_MODNAME =	github.com/prometheus/alertmanager
MODGO_VERSION =	v0.23.0

MODGO_LDFLAGS += -X github.com/prometheus/common/version.Version=${MODGO_VERSION}

DISTNAME =	alertmanager-${MODGO_VERSION}

CATEGORIES =	sysutils
HOMEPAGE =	https://prometheus.io/

MAINTAINER =	Denis Fondras <denis@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =	lang/go

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${SYSCONFDIR}/alertmanager
	${INSTALL_DATA_DIR} ${WRKINST}/${LOCALSTATEDIR}/alertmanager
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/alertmanager
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/alertmanager
	${INSTALL_PROGRAM} ${WRKDIR}/go/bin/alertmanager ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKDIR}/go/bin/amtool ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/docs/* ${PREFIX}/share/doc/alertmanager
	${INSTALL_DATA} ${WRKSRC}/doc/examples/simple.yml \
		${PREFIX}/share/examples/alertmanager
	${INSTALL_DATA} ${WRKSRC}/template/default.tmpl \
		${PREFIX}/share/examples/alertmanager

.include "modules.inc"

.include <bsd.port.mk>
