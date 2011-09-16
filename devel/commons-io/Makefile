# $OpenBSD: Makefile,v 1.4 2011/09/16 09:24:49 espie Exp $

COMMENT=	Java library to assist with developing IO functionality

V=		2.0.1
DISTNAME=	commons-io-$V-src
PKGNAME=	${DISTNAME:S/-src//}
REVISION=	1
CATEGORIES=	devel

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
MODJAVA_BUILD=	ant

BUILD_DEPENDS=	archivers/gtar

NO_REGRESS=	Yes

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR}
	${INSTALL_DATA} ${WRKSRC}/target/commons-io-$V.jar \
		${MODJAVA_JAR_DIR}/commons-io.jar

.include <bsd.port.mk>
