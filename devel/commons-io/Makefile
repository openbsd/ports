# $OpenBSD: Makefile,v 1.1.1.1 2011/08/30 07:17:38 jasper Exp $

COMMENT=	Java library to assist with developing IO functionality

V=		2.0.1
DISTNAME=	commons-io-$V-src
PKGNAME=	${DISTNAME:S/-src//}
CATEGORIES=	devel java

HOMEPAGE=	http://commons.apache.org/io/

# APLv2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_APACHE:=commons/io/source/}

TAR=		${LOCALBASE}/bin/gtar

MODULES=	java
MODJAVA_VER=	1.6+

BUILD_DEPENDS=	archivers/gtar \
		devel/apache-ant

NO_REGRESS=	Yes

JAR_DIR=	${PREFIX}/share/java/classes/

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant

do-install:
	${INSTALL_DATA_DIR} ${JAR_DIR}
	${INSTALL_DATA} ${WRKSRC}/target/commons-io-$V.jar \
		${JAR_DIR}/commons-io.jar

.include <bsd.port.mk>
