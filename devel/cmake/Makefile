# $OpenBSD: Makefile,v 1.101 2014/05/13 05:55:30 dcoppa Exp $

DPB_PROPERTIES =parallel

# avoid segfaults from binaries compiled and then used during the build
.if ${MACHINE_ARCH} == "arm"
CFLAGS +=	-O1 -fno-stack-protector
.endif

HOMEPAGE =	http://www.cmake.org/
CATEGORIES =	devel
COMMENT =	portable build system
DISTNAME =	cmake-2.8.12.2
REVISION =	3
MASTER_SITES =	${HOMEPAGE}files/v2.8/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		archive c curl curses expat form m \
			stdc++ z

# XXX: CMake's built-in ELF parser is broken on arm
.if ${MACHINE_ARCH} != "arm"
BUILD_DEPENDS =		devel/ninja
.endif

LIB_DEPENDS =		archivers/libarchive \
			net/curl

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--prefix=${PREFIX} \
			--datadir=/share/cmake \
			--docdir=/share/doc/cmake \
			--parallel=${MAKE_JOBS} \
			--system-libs \
			--verbose

CONFIGURE_ENV +=	MAKE=${MAKE_PROGRAM}

PORTHOME =		${WRKDIR}

SEPARATE_BUILD =	Yes

TEST_TARGET =		test

MAKE_FLAGS +=		VERBOSE=1

pre-configure:
	cp ${FILESDIR}/*.cmake ${WRKSRC}/Modules/
	${SUBST_CMD} ${WRKSRC}/Modules/CMakeDetermineJavaCompiler.cmake \
		${WRKSRC}/Modules/FindJNI.cmake \
		${WRKSRC}/Modules/FindJava.cmake \
		${WRKSRC}/Modules/FindLuaLibs.cmake \
		${WRKSRC}/Modules/FindMPEG.cmake \
		${WRKSRC}/Modules/FindMPEG2.cmake \
		${WRKSRC}/Modules/FindQt.cmake \
		${WRKSRC}/Modules/FindQt4.cmake \
		${WRKSRC}/Modules/FindSDL.cmake \
		${WRKSRC}/Modules/FindTCL.cmake

# XXX: CMake's built-in ELF parser is broken on arm
.if ${MACHINE_ARCH} != "arm"
do-build:
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ninja -v -j \
		${MAKE_JOBS} ${ALL_TARGET}

do-install:
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${FAKE_SETUP} ninja -v -j ${MAKE_JOBS} ${FAKE_TARGET}

do-test:
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ninja -v -j \
		${MAKE_JOBS} ${TEST_FLAGS} ${TEST_TARGET}
.endif

post-install:
	rm ${WRKINST}/${LOCALBASE}/share/cmake/Modules/*.{beforesubst,orig}
	rm ${WRKINST}/${LOCALBASE}/share/cmake/Modules/Compiler/*.orig
	rm ${WRKINST}/${LOCALBASE}/share/cmake/Modules/Platform/*.orig

.include <bsd.port.mk>
