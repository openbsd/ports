COMMENT =		systems monitoring and alerting toolkit

V =			2.24.1
GH_ACCOUNT =		prometheus
GH_PROJECT =		prometheus
GH_TAGNAME =		v${V}
REVISION =		1

CATEGORIES =		sysutils

HOMEPAGE =		https://prometheus.io/

MAINTAINER =		Claudio Jeker <claudio@openbsd.org>
DISTFILES +=		prometheus-${V}.tar.gz \
			prometheus-reactui-${V}.tar.gz:0

# Apache 2.0
PERMIT_PACKAGE =	Yes

MASTER_SITES0 =		https://www.zyd.ch/distfiles/

WANTLIB =		c pthread

BUILD_DEPENDS =		devel/promu

USE_GMAKE =		Yes

MODULES=		lang/go
MODGO_GOPATH=		${MODGO_WORKSPACE}

# promu doesn't like the default PREFIX
do-build:
	cd ${WRKSRC} && ${MAKE_ENV} GOMAXPROCS=${MAKE_JOBS} PREFIX=. ${MAKE_PROGRAM} \
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
	${INSTALL_DATA} ${WRKSRC}/npm_licenses.tar.bz2 ${PREFIX}/share/doc/prometheus/

do-test:
	cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} test

.include <bsd.port.mk>
