# $OpenBSD: Makefile,v 1.15 2020/08/14 11:21:35 rsadowski Exp $

COMMENT =		C++ toolkit for machine learning and data analysis

DISTNAME =		dlib-19.21

SHARED_LIBS +=  dlib                      3.6 # 19.7

CATEGORIES =		devel

HOMEPAGE =		http://dlib.net/

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# MIT-like (Boost)
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 Xext gif jpeg m png sqlite3
WANTLIB += z

MASTER_SITES =		http://dlib.net/files/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake

COMPILER =		base-clang ports-clang ports-gcc

LIB_DEPENDS =		graphics/jpeg \
			graphics/png \
			graphics/giflib \
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
	${SETENV} CC="${CC}" CFLAGS="${CFLAGS}" \
	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" \
	${CONFIGURE_ENV} ${LOCALBASE}/bin/cmake \
	-DCMAKE_SKIP_INSTALL_ALL_DEPENDENCY=True \
		-G ${_MODCMAKE_GEN} ${CONFIGURE_ARGS} ${WRKSRC}/dlib/test
	cd ${WRKBUILD}/dlib/test && exec ${SETENV} ${MAKE_ENV} \
	${NINJA} ${NINJA_FLAGS} ${ALL_TARGET}

do-test:
	cd ${WRKBUILD}/dlib/test && ./dtest --runall


.include <bsd.port.mk>
