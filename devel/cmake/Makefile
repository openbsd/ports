# $OpenBSD: Makefile,v 1.127 2015/06/03 08:25:30 dcoppa Exp $

DPB_PROPERTIES =parallel

# avoid segfaults from binaries compiled and then used during the build
.if ${MACHINE_ARCH} == "arm"
CFLAGS +=	-O1 -fno-stack-protector
.endif

COMMENT =	portable build system

VER =		3.2.3
DISTNAME =	cmake-${VER}

CATEGORIES =	devel

HOMEPAGE =	http://www.cmake.org/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

MASTER_SITES =	${HOMEPAGE}files/v${VER:R}/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += archive c curl expat form jsoncpp m ncurses pthread stdc++ z

# XXX: CMake's built-in ELF parser is broken on arm
# XXX: Ninja is broken on m88k
.if ${MACHINE_ARCH} != "arm" && ${MACHINE_ARCH} != "m88k"
BUILD_DEPENDS =		devel/ninja>=1.5.1
.endif

BUILD_DEPENDS +=	textproc/py-sphinx>=1.1.3p1

LIB_DEPENDS =		archivers/libarchive \
			devel/jsoncpp \
			net/curl

CONFIGURE_STYLE =	simple
CONFIGURE_ARGS =	--prefix=${PREFIX} \
			--datadir=share/cmake \
			--docdir=share/doc/cmake \
			--mandir=man \
			--no-qt-gui \
			--parallel=${MAKE_JOBS} \
			--sphinx-build=${LOCALBASE}/bin/sphinx-build \
			--sphinx-html \
			--sphinx-man \
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
		${WRKSRC}/Modules/FindMPEG.cmake \
		${WRKSRC}/Modules/FindMPEG2.cmake \
		${WRKSRC}/Modules/FindQt.cmake \
		${WRKSRC}/Modules/FindQt4.cmake \
		${WRKSRC}/Modules/FindSDL.cmake \
		${WRKSRC}/Modules/FindTCL.cmake

# XXX: CMake's built-in ELF parser is broken on arm
# XXX: Ninja is broken on m88k
.if ${MACHINE_ARCH} != "arm" && ${MACHINE_ARCH} != "m88k"
do-build:
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} ninja -v -j \
		${MAKE_JOBS} ${ALL_TARGET}

do-install:
	cd ${WRKBUILD} && exec ${SETENV} ${MAKE_ENV} \
		${FAKE_SETUP} ninja -v -j ${MAKE_JOBS} ${FAKE_TARGET}

do-test:
	cd ${WRKBUILD} && exec ${SETENV} ${ALL_TEST_ENV} ninja -v -j \
		${MAKE_JOBS} ${TEST_FLAGS} ${TEST_TARGET}
.endif

post-install:
	rm ${WRKINST}${LOCALBASE}/share/cmake/Modules/*.{beforesubst,orig} \
		${WRKINST}${LOCALBASE}/share/cmake/Modules/Compiler/*.orig \
		${WRKINST}${LOCALBASE}/share/cmake/Modules/Platform/*.orig

.include <bsd.port.mk>
