# This is not a normal port, and does not produce a package.
# It is a maintainer helper to provide a way to build snappy-java.jar
# with the native module so that it can be rebuilt more easily when
# libc++ is updated.

COMMENT=	special helper port to build snappy-java-X.jar for unifi

SNAPPYJ_V=	1.1.8.4
SNAPPY_V=	1.1.8
BITSHUFFLE_V=	0.3.2
REVISION=	0

DISTNAME=	snappy-java-${SNAPPYJ_V}

CATEGORIES=	net/unifi

# Apache 2.0
PERMIT_PACKAGE=	Yes

SITES=		https://github.com/
DISTFILES=	{xerial/snappy-java/archive/${SNAPPYJ_V}/}snappy-java-${SNAPPYJ_V}.tar.gz \
		{google/snappy/archive/${SNAPPY_V}/}snappy-${SNAPPY_V}.tar.gz \
		{kiyo-masui/bitshuffle/archive/${BITSHUFFLE_V}/}bitshuffle-${BITSHUFFLE_V}.tar.gz
SITES.mvn=	https://repo1.maven.org/maven2/org/xerial/snappy/snappy-java/${SNAPPYJ_V}/
DISTFILES.mvn=	snappy-java-${SNAPPYJ_V}.jar

EXTRACT_ONLY=	${ALL_DISTFILES:N*jar}

MODULES=	java
MODJAVA_VER=	11+

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
	ln -s ${FULLDISTDIR}/snappy-${SNAPPY_V}.tar.gz ${WRKSRC}/target/
	ln -s ${FULLDISTDIR}/bitshuffle-${BITSHUFFLE_V}.tar.gz ${WRKSRC}/target/
	mv ${WRKDIR}/snappy-${SNAPPY_V} ${WRKSRC}/target/
	mv ${WRKDIR}/bitshuffle-${BITSHUFFLE_V} ${WRKSRC}/target/
	cd ${WRKSRC}/target; touch snappy-git-extracted.log \
	    bitshuffle-extracted.log snappy-extracted.log

post-build:
	cp ${FULLDISTDIR}/snappy-java-${SNAPPYJ_V}.jar ${WRKDIR}
	cd ${WRKSRC}/target/classes; \
	    ${LOCALBASE}/jdk-11/bin/jar uvf ${WRKDIR}/snappy-java-${SNAPPYJ_V}.jar \
	    org/xerial/snappy/native/OpenBSD/*/libsnappyjava.so

do-install:
	@echo; echo this is not a normal port and does not produce a package.
	@echo it produces the following file used to replace one from unifi:
	@echo; ls -l ${WRKDIR}/snappy-java-${SNAPPYJ_V}.jar; echo

.include <bsd.port.mk>
