# $OpenBSD: Makefile,v 1.16 2021/08/31 07:32:18 ajacoutot Exp $

COMMENT =		image processing and analysis library
ONLY_FOR_ARCHS =	${CXX11_ARCHS}

V = 			1-11-1
DISTNAME =		vigra-${V:S/-/./g}-src
PKGNAME =		vigra-${V:S/-/./g}
REVISION =		5

SHARED_LIBS =		vigraimpex 0.0 # 5.1

CATEGORIES =		graphics

HOMEPAGE =		http://ukoethe.github.io/vigra/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

MASTER_SITES = https://github.com/ukoethe/vigra/releases/download/Version-${V}/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Iex-3_1 IlmThread-3_1 OpenEXR-3_1
WANTLIB += Imath-3_1 boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += boost_system-mt boost_thread-mt fftw3 jpeg m png tiff
WANTLIB += z

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake
BUILD_DEPENDS = 	math/fftw3,float
LIB_DEPENDS =		devel/boost \
			graphics/jpeg \
			graphics/openexr \
			graphics/png \
			graphics/tiff \
			math/fftw3

CONFIGURE_ARGS =	-DWITH_VIGRANUMPY=0 \
			-DDOCINSTALL=share/doc/ \
			-DWITH_BOOST_THREAD=1 \
			-DWITH_OPENEXR=1 \
			-DWITH_HDF5=0 \
			-DCREATE_CTEST_TARGETS=ON \
			-DAUTOEXEC_TESTS:BOOL=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes \
			-Wno-dev

CXXFLAGS += 		-std=c++11 -pthread
# Fix build with OpenEXR>=3 (Imath split)
CXXFLAGS += 		-I${LOCALBASE}/include/Imath

# Actually, there are tests, but they do work only on GCC.
# If you want to play, just add -DAUTOBUILD_TESTS=ON to CONFIGURE_ARGS.
# Building tests does not affect packaging.
NO_TEST =		Yes

WRKDIST = 		${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
