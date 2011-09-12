# $OpenBSD: Makefile,v 1.6 2011/09/12 12:50:24 nigel Exp $

COMMENT=	Java Native Access (JNA)

V=		3.2.7
DISTNAME=	twall-jna-$V-0-g3727f95
PKGNAME=	jna-$V
REVISION=	2
CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

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
MODJAVA_BUILD=	ant
MODJAVA_BUILD_DIR=${WRKSRC}/jnalib/

# jnalib/build.xml specifically wants gmake (and ggrep)
USE_GMAKE=	Yes

BUILD_DEPENDS=	sysutils/ggrep

WRKDIST= 	${WRKDIR}/twall-jna-d928d42/

_BD = build
.if ${MACHINE_ARCH} != "i386"
_BD = build-*
.endif

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR} ${MODJAVA_DOC_DIR}/jna/
	${INSTALL_DATA} ${WRKSRC}/jnalib/${_BD}/openbsd-${ARCH}.jar \
		${MODJAVA_JAR_DIR}/jna-platform.jar
	${INSTALL_DATA} ${WRKSRC}/jnalib/${_BD}/jna.jar ${MODJAVA_JAR_DIR}
	cp -r ${WRKSRC}/www/javadoc/ ${MODJAVA_DOC_DIR}

do-regress:
	cd ${WRKSRC}/jnalib/ && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant test

.include <bsd.port.mk>
