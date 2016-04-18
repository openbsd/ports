# $OpenBSD: Makefile,v 1.20 2016/04/18 17:33:11 jasper Exp $

COMMENT=	Java Native Access (JNA)

GH_PROJECT=	jna
GH_ACCOUNT=	java-native-access
GH_TAGNAME=	4.2.2
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
# clojure needs to have the jna.jar installed
TEST_DEPENDS=	${BASE_PKGPATH} \
		lang/clojure

GNU_ARCH=	${ARCH:S/amd64/x86-64/:S/i386/x86/}

# XXX: remove stale distribution file
post-extract:
	rm ${WRKSRC}/native/libffi/src/powerpc/linux64_closure.S.orig

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR} ${MODJAVA_DOC_DIR}/jna/
	${INSTALL_DATA} ${WRKSRC}/build/openbsd-${GNU_ARCH}.jar \
		${MODJAVA_JAR_DIR}/jna-platform.jar
	${INSTALL_DATA} ${WRKSRC}/build/jna*.jar ${MODJAVA_JAR_DIR}
	cp -r ${WRKSRC}/www/javadoc/ ${MODJAVA_DOC_DIR}

do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant \
		${MODJAVA_BUILD_ARGS} test
	${SHELL} ${FILESDIR}/test.sh

.include <bsd.port.mk>
