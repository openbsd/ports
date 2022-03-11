COMMENT=        build tool for java applications

DISTNAME=	apache-ant-1.10.12
CATEGORIES=	devel

HOMEPAGE=	https://ant.apache.org/

# Apache Software License 2.0 &
# W3C Consortium License (August 14 1998)
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_APACHE:=ant/binaries/} \
		https://archive.apache.org/dist/ant/binaries/

EXTRACT_SUFX=	-bin.tar.bz2

MODULES=	java
MODJAVA_VER=	1.8+

RUN_DEPENDS=	java/javaPathHelper

NO_BUILD=	Yes
NO_TEST=	Yes

ANTHOME=	${PREFIX}/ant
ANTDOCS=	${PREFIX}/share/doc/java/ant
TXT=		LICENSE NOTICE README WHATSNEW

do-install:
	${INSTALL_DATA_DIR} ${ANTHOME}/bin
.for i in ant antRun runant.pl
	${INSTALL_SCRIPT} ${WRKDIST}/bin/$i ${ANTHOME}/bin
	ln -s ${TRUEPREFIX}/ant/bin/$i ${PREFIX}/bin/$i
.endfor
	${INSTALL_DATA_DIR} ${ANTDOCS}
	cp -Rp ${WRKDIST}/manual/* ${ANTDOCS}
	chown -R ${SHAREOWN}:${SHAREGRP} ${ANTDOCS}
	cd ${WRKDIST} && ${INSTALL_DATA} ${TXT} ${ANTDOCS}
	${INSTALL_DATA_DIR} ${ANTHOME}/lib
	cd ${WRKDIST}/lib && ${INSTALL_DATA} *.jar ${ANTHOME}/lib

.include <bsd.port.mk>
