COMMENT =	Java JNI binding for 7-Zip archive library

GH_ACCOUNT =	sleuthkit
GH_PROJECT =	sevenzipjbinding
GH_COMMIT =	fcdbb86ef565a60577a3120942e71df05ac3e87f
DISTNAME =	sevenzipjbinding-16.02.2.01.0

CATEGORIES =	archivers

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB +=	${COMPILER_LIBCXX} m

MODULES =	devel/cmake \
		java

MODJAVA_VER =	11+

CONFIGURE_STYLE =	cmake
CONFIGURE_ARGS += -DCMAKE_POLICY_VERSION_MINIMUM=3.5 \
			-DCMAKE_C_FLAGS="${CFLAGS} -I${JAVA_HOME}/include -I${JAVA_HOME}/include/openbsd" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${JAVA_HOME}/include -I${JAVA_HOME}/include/openbsd" \
			-DJAVA_JDK=${JAVA_HOME} \
			-Wno-dev
CONFIGURE_ENV =		JAVA_HOME=${JAVA_HOME}

COMPILER =	base-clang ports-gcc

JAR_ARCH =	${MACHINE_ARCH:S/sparc64/sparcv9/}

SUBST_VARS +=	JAR_ARCH


# cmake configure is looking for javah, so create a wrapper
post-extract:
	@printf '#!/bin/sh\nexit 0\n' > ${WRKDIR}/bin/javah
	@chmod +x ${WRKDIR}/bin/javah

do-install:
	${INSTALL_DATA_DIR} ${MODJAVA_JAR_DIR}
	${INSTALL_DATA} ${WRKBUILD}/jbinding-java/sevenzipjbinding.jar \
		${MODJAVA_JAR_DIR}
	${INSTALL_DATA} ${WRKBUILD}/sevenzipjbinding-OpenBSD-${JAR_ARCH}.jar \
		${MODJAVA_JAR_DIR}

.include <bsd.port.mk>

