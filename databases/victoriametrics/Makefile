COMMENT =		fast, cost-effective and scalable time series database

V =			1.93.5

DIST_TUPLE +=		github VictoriaMetrics VictoriaMetrics v${V} . # Apache License 2.0

PKGNAME =		victoriametrics-${V}

CATEGORIES =		databases

HOMEPAGE =		https://victoriametrics.com/

MAINTAINER =		Lucas Gabriel Vuotto <lucas@sexy.is>

# Apache License 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

USE_GMAKE =		Yes

MODULES =		lang/go
MODGO_GOPATH =		${MODGO_WORKSPACE}
SUBST_VARS =		LOCALSTATEDIR
NO_TEST =		Yes

MAKE_ENV =		BUILDINFO_TAG=tags-v${V} PKG_TAG=tags-v${V}

ALL_TARGET =		github.com/VictoriaMetrics/VictoriaMetrics

do-build:
	cd ${WRKSRC} && GOOS=openbsd ${MAKE_ENV} ${MAKE_PROGRAM} victoria-metrics-pure
	cd ${WRKSRC} && GOOS=openbsd ${MAKE_ENV} ${MAKE_PROGRAM} vmbackup-pure
	cd ${WRKSRC} && GOOS=openbsd ${MAKE_ENV} ${MAKE_PROGRAM} vmrestore-pure
	cd ${WRKSRC} && GOOS=openbsd ${MAKE_ENV} ${MAKE_PROGRAM} vmagent-pure
	cd ${WRKSRC} && GOOS=openbsd ${MAKE_ENV} ${MAKE_PROGRAM} vmauth-pure
	cd ${WRKSRC} && GOOS=openbsd ${MAKE_ENV} ${MAKE_PROGRAM} vmalert-pure
	cd ${WRKSRC} && GOOS=openbsd ${MAKE_ENV} ${MAKE_PROGRAM} vmctl-pure

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bin/victoria-metrics-pure ${PREFIX}/bin/vmetrics
	${INSTALL_PROGRAM} ${WRKSRC}/bin/vmagent-pure ${PREFIX}/bin/vmagent
	${INSTALL_PROGRAM} ${WRKSRC}/bin/vmbackup-pure ${PREFIX}/bin/vmetricsbackup
	${INSTALL_PROGRAM} ${WRKSRC}/bin/vmrestore-pure ${PREFIX}/bin/vmetricsrestore
	${INSTALL_PROGRAM} ${WRKSRC}/bin/vmauth-pure ${PREFIX}/bin/vmetricsauth
	${INSTALL_PROGRAM} ${WRKSRC}/bin/vmalert-pure ${PREFIX}/bin/vmetricsalert
	${INSTALL_PROGRAM} ${WRKSRC}/bin/vmctl-pure ${PREFIX}/bin/vmetricsctl
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/vmetrics/
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/vmetrics/
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/vmetrics/
	${INSTALL_DATA} ${WRKSRC}/docs/vm* ${PREFIX}/share/doc/vmetrics/
	${INSTALL_DATA} ${WRKSRC}/app/vmauth/example_config.yml \
	    ${PREFIX}/share/doc/vmetrics/vmauth_example_config.yml
	${INSTALL_DATA} ${WRKSRC}/deployment/docker/alerts.yml \
	    ${PREFIX}/share/doc/vmetrics/vmetricsalert_example_config.yml
	${INSTALL_DATA} ${WRKSRC}/deployment/docker/prometheus.yml \
	    ${PREFIX}/share/doc/vmetrics/vmetrics_example_config.yml

.include <bsd.port.mk>
