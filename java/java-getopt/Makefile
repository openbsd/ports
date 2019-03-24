# $OpenBSD: Makefile,v 1.9 2019/03/24 22:24:13 sthen Exp $

COMMENT=	Java port of GNU getopt family functions

DISTNAME=	java-getopt-1.0.14
CATEGORIES=	devel
REVISION=	1

HOMEPAGE=	http://www.urbanophile.com/arenn/hacking/download.html

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE:=/../getopt/}

WRKDIST=	${WRKDIR}

MODULES=	java
MODJAVA_VER=	1.8+
MODJAVA_BUILD=	ant

post-extract:
	cp ${WRKSRC}/gnu/getopt/buildx.xml ${WRKSRC}/build.xml

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR} ${MODJAVA_DOC_DIR}/getopt/
	${INSTALL_DATA} ${WRKSRC}/build/lib/gnu.getopt.jar ${MODJAVA_JAR_DIR}
	cp -r ${WRKSRC}/build/api/* ${MODJAVA_DOC_DIR}/getopt/

.include <bsd.port.mk>
