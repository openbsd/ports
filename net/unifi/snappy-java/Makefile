COMMENT=	JNI-based wrapper of "snappy" C++ compression library

ONLY_FOR_ARCHS=	aarch64 amd64

HOMEPAGE=	https://github.com/xerial/snappy-java

SNAPPYJ_V=      1.1.10.8
SNAPPY_V=       1.1.10
BITSHUFFLE_V=   0.3.4
MODJAVA_VER=    17+

SITES=		https://repo1.maven.org/maven2/org/xerial/snappy/snappy-java/${SNAPPYJ_V}/
DISTFILES=	snappy-java-${SNAPPYJ_V}.jar

DIST_TUPLE=	github xerial snappy-java v${SNAPPYJ_V} . \
		github google snappy ${SNAPPY_V} target/snappy-${SNAPPY_V} \
		github google benchmark d572f4777349d43653b21d6c2fc63020ab326db2 target/snappy-${SNAPPY_V}/third_party/benchmark \
		github google googletest b796f7d44681514f58a683a3a71ff17c94edb0c1 target/snappy-${SNAPPY_V}/third_party/googletest \
		github kiyo-masui bitshuffle ${BITSHUFFLE_V} target/bitshuffle-${BITSHUFFLE_V}

DISTNAME=	snappy-java-${SNAPPYJ_V}

CATEGORIES=	net/unifi archivers

# Apache 2.0
PERMIT_PACKAGE=	Yes

# extra; native code built into .jar
WANTLIB=	${COMPILER_LIBCXX} m
COMPILER=	base-clang

EXTRACT_ONLY=	${ALL_DISTFILES:N*jar}

MODULES=	java

# not MODULES; it is run from a Makefile
BUILD_DEPENDS=	devel/cmake/core

USE_GMAKE=	Yes
MAKE_ENV=	JAVA_HOME=${JAVA_HOME}
MAKE_FLAGS=	CXX="${CXX}" CC="${CC}" LINKFLAGS="-shared" \
		HOME=${WRKDIR} \
		PATH="${PATH}:${JAVA_HOME}/bin"
ALL_TARGET=	native
NO_TEST=	Yes

post-extract:
	mkdir -p ${WRKSRC}/target/
	ln -fs ${FULLDISTDIR}/google-snappy-${SNAPPY_V}.tar.gz ${WRKSRC}/target/snappy-${SNAPPY_V}.tar.gz
	ln -fs ${FULLDISTDIR}/kiyo-masui-bitshuffle-${BITSHUFFLE_V}.tar.gz ${WRKSRC}/target/bitshuffle-${BITSHUFFLE_V}.tar.gz
	touch ${WRKSRC}/target/{snappy-git,bitshuffle,snappy}-extracted.log

post-build:
	cp ${FULLDISTDIR}/snappy-java-${SNAPPYJ_V}.jar ${WRKDIR}
	cd ${WRKSRC}/target/classes; \
	    ${JAVA_HOME}/bin/jar uvf ${WRKDIR}/snappy-java-${SNAPPYJ_V}.jar \
	    org/xerial/snappy/native/OpenBSD/*/libsnappyjava.so

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes
	${INSTALL_DATA} ${WRKDIR}/snappy-java-${SNAPPYJ_V}.jar \
		${PREFIX}/share/java/classes/snappy-java.jar

.include <bsd.port.mk>
