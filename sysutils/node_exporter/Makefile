# $OpenBSD: Makefile,v 1.4 2020/04/14 21:38:00 sthen Exp $

BROKEN-aarch64 = looks like the vendored golang.org/x/net/internal/socket is too old for aarch64

COMMENT =		prometheus exporter for hardware and OS metrics

GH_ACCOUNT =		prometheus
GH_PROJECT =		node_exporter
GH_TAGNAME =		v0.18.1

CATEGORIES =		sysutils

HOMEPAGE =		http://prometheus.io/

MAINTAINER =		Claudio Jeker <claudio@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

BUILD_DEPENDS =		devel/promu
TEST_DEPENDS =		shells/bash

USE_GMAKE =		Yes

MODULES=		lang/go
MODGO_GOPATH=		${MODGO_WORKSPACE}

# promu doesn't like the default PREFIX
do-build:
	cd ${WRKSRC} && ${MAKE_ENV} GOMAXPROCS=${MAKE_JOBS} PREFIX=. ${MAKE_PROGRAM} \
	    PROMU="${LOCALBASE}/bin/promu --config \$$(PROMU_CONF) -v" build

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/node_exporter
	${INSTALL_PROGRAM} ${WRKSRC}/node_exporter ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/node_exporter/
	${INSTALL_DATA} ${WRKSRC}/NOTICE ${PREFIX}/share/doc/node_exporter/

do-test:
	cd ${WRKSRC} && ${MAKE_ENV} ${MAKE_PROGRAM} test

.include <bsd.port.mk>
