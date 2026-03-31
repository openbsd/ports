COMMENT =		systems monitoring and alerting toolkit

V =			3.5.1
GH_ACCOUNT =		prometheus
GH_PROJECT =		prometheus
GH_TAGNAME =		v${V}

CATEGORIES =		sysutils

HOMEPAGE =		https://prometheus.io/

MAINTAINER =		Claudio Jeker <claudio@openbsd.org>
DISTFILES =		prometheus-${V}.tar.gz
DISTFILES.a = 		prometheus-web-ui-${V}.tar.gz
DISTFILES.b =		prometheus-vendor-${V}.tar.gz

SITES.a =		https://github.com/prometheus/prometheus/releases/download/${GH_TAGNAME}/
SITES.b =		https://www.zyd.ch/distfiles/

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

BUILD_DEPENDS =		devel/promu shells/bash

USE_GMAKE =		Yes

MODULES =		lang/go
MODGO_GOPATH =		${MODGO_WORKSPACE}

# promu doesn't like the default PREFIX
do-build:
	cd ${WRKSRC} && \
	${MAKE_ENV} GOMAXPROCS=${MAKE_JOBS} PREFIX=. ${MAKE_PROGRAM} \
	    PREBUILT_ASSETS_STATIC_DIR=${WRKDIR}/static \
	    PROMU="${LOCALBASE}/bin/promu -v" build

do-install:
	${INSTALL_DATA_DIR} ${WRKINST}/${SYSCONFDIR}/prometheus
	${INSTALL_DATA_DIR} ${WRKINST}/${LOCALSTATEDIR}/prometheus
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/prometheus
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/prometheus
	${INSTALL_PROGRAM} ${WRKSRC}/prometheus ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/promtool ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/documentation/examples/prometheus.yml \
		${PREFIX}/share/examples/prometheus/prometheus.yml
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/prometheus/
	${INSTALL_DATA} ${WRKSRC}/NOTICE ${PREFIX}/share/doc/prometheus/

do-test:
	cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} test

vendor: patch
	cd ${WRKDIR}/prometheus-$V; \
	go mod tidy; \
	go mod vendor; \
	cd ..; \
	tar cvzf prometheus-vendor-${V}.tar.gz prometheus-$V/vendor

.include <bsd.port.mk>
