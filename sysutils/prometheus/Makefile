# $OpenBSD: Makefile,v 1.3 2019/03/08 18:37:22 sthen Exp $

COMMENT =		systems monitoring and alerting toolkit

GH_ACCOUNT =		prometheus
GH_PROJECT =		prometheus
GH_TAGNAME =		v2.0.0
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		http://prometheus.io/

MAINTAINER =		Claudio Jeker <claudio@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pthread

BUILD_DEPENDS =		devel/promu

USE_GMAKE = 		Yes

MODULES=		lang/go

do-build:
	cd ${WRKSRC} && GOMAXPROCS=${MAKE_JOBS} GOCACHE=${MODGO_GOCACHE} \
	    GOPATH=${MODGO_WORKSPACE} ${MAKE_PROGRAM} \
	    PROMU="${LOCALBASE}/bin/promu -v" build

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${SYSCONFDIR}/prometheus
	${INSTALL_DATA_DIR} ${WRKINST}/${LOCALSTATEDIR}/prometheus
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/prometheus
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/prometheus/consoles
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/prometheus/console_libraries
	${INSTALL_PROGRAM} ${WRKSRC}/prometheus ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/promtool ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/consoles/* \
		${PREFIX}/share/examples/prometheus/consoles/
	${INSTALL_DATA} ${WRKSRC}/console_libraries/{menu.lib,prom.lib} \
		${PREFIX}/share/examples/prometheus/console_libraries
	${INSTALL_DATA} ${WRKSRC}/documentation/examples/prometheus.yml \
		${PREFIX}/share/examples/prometheus/prometheus.yml
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/prometheus/
	${INSTALL_DATA} ${WRKSRC}/NOTICE ${PREFIX}/share/doc/prometheus/

do-test:
	cd ${WRKSRC} && GOPATH=${MODGO_WORKSPACE} ${MAKE_PROGRAM} test

.include <bsd.port.mk>
