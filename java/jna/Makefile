COMMENT=	Java Native Access (JNA)

GH_PROJECT=	jna
GH_ACCOUNT=	java-native-access
GH_TAGNAME=	5.18.1
CATEGORIES=	devel

HOMEPAGE=	https://github.com/java-native-access/jna

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

MODULES=	java
MODJAVA_VER=	11+
MODJAVA_BUILD=	ant

# use the system libffi, do a release build
MODJAVA_BUILD_ARGS += -Ddynlink.native=true -Drelease=true
MODJAVA_BUILD_TARGET_NAME = native jar contrib-jars

# build.xml specifically wants gmake (and ggrep)
USE_GMAKE=	Yes

BUILD_DEPENDS=	sysutils/ggrep
LIB_DEPENDS=	devel/libffi
# clojure needs to have the jna.jar installed
TEST_DEPENDS=	${BASE_PKGPATH} \
		lang/clojure

MAKE_ENV=	CC="${CC}" \
		PORTS_CFLAGS="${CFLAGS}"

# Inorder to update aarch64 and sparc64 native libs, we need placeholders
# for the missing jars.
MISSING_JARS=	${WRKSRC}/lib/native/openbsd-aarch64.jar \
		${WRKSRC}/lib/native/openbsd-sparcv9.jar

post-extract:
	for f in ${MISSING_JARS} ; do \
		[ -e $$f ] || cp ${WRKSRC}/lib/native/out-of-date.jar $$f ; done

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR}
	${INSTALL_DATA} ${WRKSRC}/contrib/platform/dist/jna-platform*.jar \
		${MODJAVA_JAR_DIR}
	${INSTALL_DATA} ${WRKSRC}/build/jna*.jar ${MODJAVA_JAR_DIR}

do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${LOCALBASE}/bin/ant \
		${MODJAVA_BUILD_ARGS} test
	# needs to be run interactively with lang/clojure set up
	#${SHELL} ${FILESDIR}/test.sh

.include <bsd.port.mk>
