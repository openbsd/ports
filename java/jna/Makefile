COMMENT=	Java Native Access (JNA)

GH_PROJECT=	jna
GH_ACCOUNT=	java-native-access
GH_TAGNAME=	4.4.0
CATEGORIES=	devel
MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>
REVISION=	4

HOMEPAGE=	https://github.com/java-native-access/jna

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

MODULES=	java
MODJAVA_VER=	1.8
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

MAKE_ENV=	CC="${CC}" \
		PORTS_CFLAGS="${CFLAGS}"

GNU_ARCH=	${MACHINE_ARCH:S/amd64/x86-64/:S/i386/x86/:S/sparc64/sparcv9/}

# XXX: remove stale distribution file
post-extract:
	rm ${WRKSRC}/native/libffi/src/powerpc/linux64_closure.S.orig

pre-configure:
	sed -i -e 's,-Wno-unknown-warning-option,,' \
		-e 's,-Wno-clobbered,,' ${WRKSRC}/native/Makefile

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR} ${MODJAVA_DOC_DIR}/jna/
	${INSTALL_DATA} ${WRKSRC}/build/openbsd-${GNU_ARCH}.jar \
		${MODJAVA_JAR_DIR}/jna-platform.jar
	${INSTALL_DATA} ${WRKSRC}/build/jna*.jar ${MODJAVA_JAR_DIR}
	cp -r ${WRKSRC}/doc/javadoc ${MODJAVA_DOC_DIR}

do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant \
		${MODJAVA_BUILD_ARGS} test
	${SHELL} ${FILESDIR}/test.sh

.include <bsd.port.mk>
