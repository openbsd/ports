COMMENT=	Prometheus exporter for SNMP metrics

# updating: bump V version, "make patch" (fix patches if needed),
# "make mibs", update M version, "make makesum".
V=		0.20.0
M=		0.20.0
REVISION=	0
GH_ACCOUNT=	prometheus
GH_PROJECT=	snmp_exporter
GH_TAGNAME=	v$V
DISTFILES=	snmp_exporter-$V.tar.gz \
		snmp_exporter_mibs+vendor-$M.tar.xz:0

CATEGORIES=	sysutils

HOMEPAGE=	https://prometheus.io/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c netsnmp pthread

MASTER_SITES0=	https://spacehopper.org/mirrors/

LIB_DEPENDS=	net/net-snmp

MODULES=	lang/go
MODGO_GOPATH=	${MODGO_WORKSPACE}

post-extract:
.if $V == $M
	xzcat ${FULLDISTDIR}/snmp_exporter_mibs+vendor-$M.tar.xz | tar xf - -C ${WRKDIR}
	mv ${WRKDIR}/generator/mibs ${WRKDIST}/generator/
	mv ${WRKDIR}/vendor ${WRKDIST}/
.endif

post-build:
	cd ${WRKSRC}/generator && \
	    ${MODGO_BUILD_CMD} github.com/prometheus/snmp_exporter/generator

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/snmp_exporter
	${INSTALL_PROGRAM} ${WRKDIR}/go/bin/snmp_exporter ${PREFIX}/bin
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/generator ${PREFIX}/bin/snmp_generator
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,README.md} \
	    ${PREFIX}/share/doc/snmp_exporter/
	${INSTALL_DATA} ${WRKSRC}/{snmp,generator/generator}.yml \
	    ${FILESDIR}/generator-pf.yml ${PREFIX}/share/examples/snmp_exporter/
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
	${_PBUILD} ln -fs ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar
	cd ${WRKDIR}/snmp_exporter-$V; \
	    ${_PBUILD} chmod ug=rwX,o=rX . generator go.mod go.sum; \
	    go mod tidy; \
	    go mod vendor; \
	    PATH=${WRKDIR}/bin:$$PATH gmake -C generator; \
	    mibs=`mktemp /tmp/mibs.XXXXXXXX`; \
	    tar cf - vendor generator/mibs | xz > $$mibs; \
	    chmod 644 $$mibs; \
	    scp $$mibs naiad:mirrors/snmp_exporter_mibs+vendor-$V.tar.xz; \
	    rm $$mibs; chmod -R g=rwX generator/mibs
	${_PBUILD} rm -f ${WRKDIR}/bin/tar

.include <bsd.port.mk>
