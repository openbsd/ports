# $OpenBSD: Makefile,v 1.1.1.1 2020/11/21 12:25:58 sthen Exp $

COMMENT =		Prometheus exporter to test HTTP/DNS/TCP/ICMP endpoints

GH_ACCOUNT =		prometheus
GH_PROJECT =		blackbox_exporter
GH_TAGNAME =		v0.18.0

CATEGORIES =		sysutils

MAINTAINER =		Stuart Henderson <stu.ports@spacehopper.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

BUILD_DEPENDS =		devel/promu

USE_GMAKE =		Yes

MODULES=		lang/go
MODGO_GOPATH=		${MODGO_WORKSPACE}

# promu doesn't like the default PREFIX
do-build:
	cd ${WRKSRC} && ${MAKE_ENV} GOMAXPROCS=${MAKE_JOBS} PREFIX=. ${MAKE_PROGRAM} \
	    PROMU="${LOCALBASE}/bin/promu -v" build

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/blackbox_exporter
	${INSTALL_PROGRAM} ${WRKSRC}/blackbox_exporter ${PREFIX}/bin
	cd ${PREFIX}/share; \
	    ${INSTALL_DATA} ${WRKSRC}/{LICENSE,*.md} doc/blackbox_exporter; \
	    ${INSTALL_DATA} ${WRKSRC}/*.yml examples/blackbox_exporter

.include <bsd.port.mk>
