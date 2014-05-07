# $OpenBSD: Makefile,v 1.13 2014/05/07 15:42:16 kurt Exp $

COMMENT=	Java Native Access (JNA)

V=		3.5.1
DISTNAME=	jna-$V-a31faf3026
PKGNAME=	jna-$V
EXTRACT_SUFX=	.zip
CATEGORIES=	devel
REVISION=	1

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	https://github.com/twall/jna

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

# git tag of $V
MASTER_SITES=	http://distfiles.nl/

MODULES=	java
MODJAVA_VER=	1.6+
MODJAVA_BUILD=	ant

# build.xml specifically wants gmake (and ggrep)
USE_GMAKE=	Yes

BUILD_DEPENDS=	sysutils/ggrep

_BD = build
.if ${MACHINE_ARCH} != "i386"
_BD = build-*
.endif

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR} ${MODJAVA_DOC_DIR}/jna/
	${INSTALL_DATA} ${WRKSRC}/${_BD}/openbsd-${ARCH}.jar \
		${MODJAVA_JAR_DIR}/jna-platform.jar
	${INSTALL_DATA} ${WRKSRC}/${_BD}/jna.jar ${MODJAVA_JAR_DIR}
	cp -r ${WRKSRC}/www/javadoc/ ${MODJAVA_DOC_DIR}

do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant test

.include <bsd.port.mk>
