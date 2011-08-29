# $OpenBSD: Makefile,v 1.1.1.1 2011/08/29 15:07:32 jasper Exp $

COMMENT=	Java Native Access (JNA)

V=		3.2.7
DISTNAME=	twall-jna-$V-0-g3727f95
PKGNAME=	jna-$V
CATEGORIES=	java devel

HOMEPAGE=	https://github.com/twall/jna

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/
EXTRACT_SUFX=	.zip

MODULES=	java
MODJAVA_VER=	1.6+

BUILD_DEPENDS=	devel/apache-ant

WRKDIST= 	${WRKDIR}/twall-jna-d928d42/

JAR_DIR=	${PREFIX}/share/java/classes/
DOC_DIR=	${PREFIX}/share/java/jna/

do-build:
	cd ${WRKSRC}/jnalib/ && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant

do-install:
	${INSTALL_DATA_DIR} ${JAR_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/jnalib/build-*/openbsd-${ARCH}.jar \
		${JAR_DIR}/jna-platform.jar
	${INSTALL_DATA} ${WRKSRC}/jnalib/build-*/jna.jar ${JAR_DIR}
	cp -r ${WRKSRC}/www/javadoc/ ${DOC_DIR}

do-regress:
	cd ${WRKSRC}/jnalib/ && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant test

.include <bsd.port.mk>
