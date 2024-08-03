COMMENT =		C++ toolkit for machine learning and data analysis

VERSION =		19.24.5
DISTNAME =		dlib-${VERSION}

DIST_TUPLE +=	github davisking dlib v${VERSION} .

SHARED_LIBS +=  dlib                      6.0 # 19.24

CATEGORIES =		devel

HOMEPAGE =		http://dlib.net/

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# MIT-like (Boost)
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xext avcodec avdevice
WANTLIB += avfilter avformat avutil gif jpeg m png sqlite3 swresample
WANTLIB += swscale z

MODULES =		devel/cmake

COMPILER =		base-clang ports-clang ports-gcc

BUILD_DEPENDS =		graphics/libwebp \
			graphics/libjxl

LIB_DEPENDS =		graphics/jpeg \
			graphics/png \
			graphics/giflib \
			graphics/ffmpeg \
			databases/sqlite3

# XXX Disable searching for blas (cblas lacks)
# Check after math/blas update or OpenBLAS import
CONFIGURE_ARGS =	-DDLIB_USE_BLAS=OFF \
			-DDLIB_USE_LAPACK=OFF \
			-DDLIB_USE_MKL_FFT=OFF \
			-DBUILD_SHARED_LIBS=ON

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}

pre-test:
	test -d ${WRKBUILD}/dlib/test || mkdir ${WRKBUILD}/dlib/test \
	&& cd ${WRKBUILD}/dlib/test && \
	${SETENV} CC="${CC}" CFLAGS="${CFLAGS} -I${X11BASE}/include" \
	CXX="${CXX}" CXXFLAGS="${CXXFLAGS} -I${X11BASE}/include" \
	${CONFIGURE_ENV} ${LOCALBASE}/bin/cmake \
	-DCMAKE_SKIP_INSTALL_ALL_DEPENDENCY=True \
	-DCMAKE_VERBOSE_MAKEFILE=ON \
		-G ${_MODCMAKE_GEN} ${CONFIGURE_ARGS} ${WRKSRC}/dlib/test
	cd ${WRKBUILD}/dlib/test && ${LOCALBASE}/bin/cmake --build .

do-test:
	cd ${WRKBUILD}/dlib/test && ./dtest --runall


.include <bsd.port.mk>
