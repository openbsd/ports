# This is not a normal port, and does not produce a package.
# It is a maintainer helper to provide a way to build snappy-java.jar
# with the native module so that it can be rebuilt more easily when
# libc++ is updated.
UNLINKED =	snappy-java-bootstrap
PORTROACH =	ignore=1
STATIC_PLIST =	No

COMMENT=	special helper port to build snappy-java-X.jar for unifi

SNAPPYJ_V=	1.1.10.5
SNAPPY_V=	1.1.10
BITSHUFFLE_V=	0.3.4

HOMEPAGE=	https://github.com/xerial/snappy-java

DISTNAME=	snappy-java-${SNAPPYJ_V}

CATEGORIES=	net/unifi

# Apache 2.0
PERMIT_PACKAGE=	helper port only

DIST_TUPLE=	github xerial snappy-java v${SNAPPYJ_V} . \
		github google snappy ${SNAPPY_V} target/snappy-${SNAPPY_V} \
		github google benchmark d572f4777349d43653b21d6c2fc63020ab326db2 target/snappy-${SNAPPY_V}/third_party/benchmark \
		github google googletest b796f7d44681514f58a683a3a71ff17c94edb0c1 target/snappy-${SNAPPY_V}/third_party/googletest \
		github kiyo-masui bitshuffle ${BITSHUFFLE_V} target/bitshuffle-${BITSHUFFLE_V}

SITES.mvn=	https://repo1.maven.org/maven2/org/xerial/snappy/snappy-java/${SNAPPYJ_V}/
DISTFILES.mvn=	snappy-java-${SNAPPYJ_V}.jar

EXTRACT_ONLY=	${ALL_DISTFILES:N*jar}

MODULES=	java
MODJAVA_VER=	17+

# not MODULES; it is run from a Makefile
BUILD_DEPENDS=	devel/cmake

USE_GMAKE=	Yes
MAKE_ENV=	JAVA_HOME=${JAVA_HOME}
MAKE_FLAGS=	CXX="${CXX}" CC="${CC}" LINKFLAGS="-shared" \
		HOME=${WRKDIR} \
		PATH="${PATH}:${LOCALBASE}/jdk-11/bin"
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
	@echo; echo this is not a normal port and does not produce a package.
	@echo it produces the following file used to replace one from unifi:
	@echo; ls -l ${WRKDIR}/snappy-java-${SNAPPYJ_V}.jar; echo

.include <bsd.port.mk>
