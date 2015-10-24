# $OpenBSD: Makefile,v 1.17 2015/10/24 14:08:41 jasper Exp $

COMMENT=	Java Native Access (JNA)

GH_PROJECT=	jna
GH_ACCOUNT=	java-native-access
GH_TAGNAME=	4.2.1
DISTNAME=	${GH_PROJECT}-${GH_TAGNAME}
CATEGORIES=	devel
MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	https://github.com/java-native-access/jna

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	java
MODJAVA_VER=	1.6+
MODJAVA_BUILD=	ant

# use the system libffi
MODJAVA_BUILD_ARGS +=-Ddynlink.native=true

# build.xml specifically wants gmake (and ggrep)
USE_GMAKE=	Yes

BUILD_DEPENDS=	sysutils/ggrep
LIB_DEPENDS=	devel/libffi

GNU_ARCH=	${ARCH:S/amd64/x86-64/:S/i386/x86/}

# XXX: remove stale distribution file
post-extract:
	rm native/libffi/src/powerpc/linux64_closure.S.orig

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR} ${MODJAVA_DOC_DIR}/jna/
	${INSTALL_DATA} ${WRKSRC}/build/openbsd-${GNU_ARCH}.jar \
		${MODJAVA_JAR_DIR}/jna-platform.jar
	${INSTALL_DATA} ${WRKSRC}/build/jna*.jar ${MODJAVA_JAR_DIR}
	cp -r ${WRKSRC}/www/javadoc/ ${MODJAVA_DOC_DIR}

do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant \
		${MODJAVA_BUILD_ARGS} test

.include <bsd.port.mk>
