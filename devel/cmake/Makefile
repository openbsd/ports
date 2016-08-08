# $OpenBSD: Makefile,v 1.146 2016/08/08 07:44:48 dcoppa Exp $

DPB_PROPERTIES =parallel

COMMENT =	portable build system

VER =		3.6.1
DISTNAME =	cmake-${VER}
CATEGORIES =	devel

HOMEPAGE =	http://www.cmake.org/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

MASTER_SITES =	${HOMEPAGE}files/v${VER:R}/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += archive c curl expat form jsoncpp m ncurses pthread stdc++ z

# XXX: Ninja is broken on m88k
.if ${MACHINE_ARCH} != "m88k"
BUILD_DEPENDS =		devel/ninja>=1.5.1
.endif

BUILD_DEPENDS +=	textproc/py-sphinx>=1.4

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

.if ${MACHINE_ARCH} == "arm"
CXXFLAGS+=-fno-stack-protector
.endif

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

# XXX: Ninja is broken on m88k
.if ${MACHINE_ARCH} != "m88k"
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
