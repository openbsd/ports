# $OpenBSD: Makefile,v 1.5 2020/06/01 13:57:56 sthen Exp $

COMMENT =		Prometheus exporter for SNMP metrics

# updating: bump V version, make patch (fix patches if needed), make mibs, update M version
V =			0.18.0
M =			0.18.0
GH_ACCOUNT =		prometheus
GH_PROJECT =		snmp_exporter
GH_TAGNAME =		v$V

CATEGORIES =		sysutils

HOMEPAGE =		https://prometheus.io/

MAINTAINER =		Stuart Henderson <sthen@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		c netsnmp pthread

# to update mibs file, comment-out DISTFILES, run "make mibs",
# reenable DISTFILES, make makesum/etc.
MASTER_SITES0 =		https://spacehopper.org/mirrors/
DISTFILES =		snmp_exporter-$V.tar.gz \
			snmp_exporter_mibs-$M.tar.xz:0

LIB_DEPENDS =		net/net-snmp
BUILD_DEPENDS =		devel/promu

USE_GMAKE =		Yes

MODULES=		lang/go
MODGO_GOPATH=		${MODGO_WORKSPACE}

.if $V == $M
post-extract:
	mv ${WRKDIR}/mibs ${WRKDIST}/generator/
.endif

# promu doesn't like the default PREFIX
do-build:
	cd ${WRKSRC} && ${MAKE_ENV} GOMAXPROCS=${MAKE_JOBS} PREFIX=. ${MAKE_PROGRAM} \
	    PROMU="${LOCALBASE}/bin/promu -v" build
	cd ${WRKSRC}/generator && \
	    ${MODGO_BUILD_CMD} github.com/prometheus/snmp_exporter/generator

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/snmp_exporter
	${INSTALL_PROGRAM} ${WRKSRC}/snmp_exporter ${PREFIX}/bin
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/generator ${PREFIX}/bin/snmp_generator
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,README.md} \
	    ${PREFIX}/share/doc/snmp_exporter/
	${INSTALL_DATA} ${WRKSRC}/{snmp,generator/generator}.yml \
	    ${PREFIX}/share/examples/snmp_exporter/
	cp -r ${WRKSRC}/generator/mibs \
	    ${PREFIX}/share/examples/snmp_exporter/
	find ${PREFIX}/share/examples/snmp_exporter/mibs -name '*.md5' -delete

do-test:
	cd ${WRKSRC}/generator; \
	    mkdir -p gentest; \
	    cd gentest; \
	    cp ../generator.yml .; \
	    MIBDIRS=+../mibs ${PREFIX}/bin/snmp_generator generate

mibs: patch
	cd ${WRKDIR}/*/generator; \
	    ${_PBUILD} chmod 777 .; \
	    gmake; \
	    mibs=`mktemp /tmp/mibs.XXXXXXXX`; \
	    tar cf - mibs | xz > $$mibs; \
	    chmod 644 $$mibs; \
	    scp $$mibs naiad:mirrors/snmp_exporter_mibs-$V.tar.xz; \
	    rm $$mibs

.include <bsd.port.mk>
