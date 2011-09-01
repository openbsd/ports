# $OpenBSD: Makefile,v 1.3 2011/09/01 08:06:28 jasper Exp $

COMMENT=	Java port of GNU getopt family functions

DISTNAME=	java-getopt-1.0.13
REVISION=	1
CATEGORIES=	devel

HOMEPAGE=	http://www.urbanophile.com/arenn/hacking/download.html

# LGPLv2+
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes

MASTER_SITES=	${HOMEPAGE:=/../getopt/}

WRKDIST=	${WRKDIR}

MODULES=	java
MODJAVA_VER=	1.6+
MODJAVA_BUILD=	ant

post-extract:
	cp ${WRKSRC}/gnu/getopt/buildx.xml ${WRKSRC}/build.xml

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR} ${MODJAVA_DOC_DIR}/getopt/
	${INSTALL_DATA} ${WRKSRC}/build/lib/gnu.getopt.jar ${MODJAVA_JAR_DIR}
	cp -r ${WRKSRC}/build/api/* ${MODJAVA_DOC_DIR}/getopt/

.include <bsd.port.mk>
