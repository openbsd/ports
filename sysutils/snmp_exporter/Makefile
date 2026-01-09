COMMENT=	Prometheus exporter for SNMP metrics

# updating: bump V version, "make makesum", "make patch" (fix patches
# if needed), "make mibs", update M version, "make makesum".
V=		0.30.1
M=		0.30.1
MODGO_MODNAME=	github.com/prometheus/snmp_exporter
MODGO_VERSION=	v$V
DISTNAME=	snmp_exporter-${MODGO_VERSION}
WRKDIST=	${WRKSRC} # XXX go.port.mk

SITES.sh=	https://spacehopper.org/mirrors/
DISTFILES.sh=	snmp_exporter_mibs-$M.tar.xz

CATEGORIES=	sysutils

HOMEPAGE=	https://prometheus.io/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c netsnmp pthread

LIB_DEPENDS=	net/net-snmp

MODULES=	lang/go
TEST_DEPENDS=	${FULLPKGNAME}:${BUILD_PKGPATH}

post-extract:
.if $V == $M
	xzcat ${FULLDISTDIR}/snmp_exporter_mibs-$M.tar.xz | tar xf - -C ${WRKSRC}
.endif

ALL_TARGET=	${MODGO_MODNAME}/...

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/snmp_exporter
	mv ${PREFIX}/bin/generator ${PREFIX}/bin/snmp_generator
	${INSTALL_DATA} ${WRKSRC}/{LICENSE,README.md,auth-split-migration.md} \
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
	    MIBDIRS=../mibs ${PREFIX}/bin/snmp_generator generate

mibs: patch
	${_PBUILD} ln -fs ${LOCALBASE}/bin/gtar ${WRKDIR}/bin/tar
	${_PBUILD} ln -fs ${LOCALBASE}/bin/gsed ${WRKDIR}/bin/sed
	set -x; cd ${WRKDIST}; \
	    ${_PBUILD} chmod -R ug=rwX,o=rX .; \
	    umask 007; \
	    PATH=${WRKDIR}/bin:$$PATH gmake -C generator; \
	    mibs=`mktemp /tmp/mibs.XXXXXXXX`; \
	    tar cf - generator/mibs | xz > $$mibs; \
	    chmod 644 $$mibs; \
	    ls -lh $$mibs; \
	    scp $$mibs naiad:mirrors/snmp_exporter_mibs-$V.tar.xz; \
	    rm $$mibs
	${_PBUILD} rm -f ${WRKDIR}/bin/tar

.include "modules.inc"
.include <bsd.port.mk>
