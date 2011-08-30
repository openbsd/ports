# $OpenBSD: Makefile,v 1.1.1.1 2011/08/30 07:16:22 jasper Exp $

COMMENT=	Java port of GNU getopt family functions

DISTNAME=	java-getopt-1.0.13
CATEGORIES=	java devel

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

BUILD_DEPENDS=	devel/apache-ant

JAR_DIR=	${PREFIX}/share/java/classes/
DOC_DIR=	${PREFIX}/share/java/getopt/

post-extract:
	cp ${WRKSRC}/gnu/getopt/buildx.xml ${WRKSRC}/build.xml

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant

do-install:
	${INSTALL_DATA_DIR} ${JAR_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/build/lib/gnu.getopt.jar ${JAR_DIR}
	cp -r ${WRKSRC}/build/api/* ${DOC_DIR}

.include <bsd.port.mk>
