# $OpenBSD: Makefile,v 1.15 2015/09/04 21:22:29 sthen Exp $

COMMENT=	Java Native Access (JNA)

GH_PROJECT=	jna
GH_ACCOUNT=	java-native-access
GH_TAGNAME=	4.1.0
DISTNAME=	${GH_PROJECT}-${GH_TAGNAME}
CATEGORIES=	devel
MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	https://github.com/java-native-access/jna

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	java
MODJAVA_VER=	1.6+
MODJAVA_BUILD=	ant

# build.xml specifically wants gmake (and ggrep)
USE_GMAKE=	Yes

BUILD_DEPENDS=	sysutils/ggrep

GNU_ARCH=	${ARCH:S/amd64/x86-64/:S/i386/x86/}

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR} ${MODJAVA_DOC_DIR}/jna/
	${INSTALL_DATA} ${WRKSRC}/build/openbsd-${GNU_ARCH}.jar \
		${MODJAVA_JAR_DIR}/jna-platform.jar
	${INSTALL_DATA} ${WRKSRC}/build/jna*.jar ${MODJAVA_JAR_DIR}
	cp -r ${WRKSRC}/www/javadoc/ ${MODJAVA_DOC_DIR}

do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant test

.include <bsd.port.mk>
