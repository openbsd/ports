# $OpenBSD: Makefile,v 1.11 2018/05/01 07:31:54 kirby Exp $

COMMENT =		image processing and analysis library
ONLY_FOR_ARCHS =	${CXX11_ARCHS}

V = 			1-11-1
DISTNAME =		vigra-${V:S/-/./g}-src
PKGNAME =		vigra-${V:S/-/./g}
REVISION =		1

SHARED_LIBS =		vigraimpex 0.0 # 5.1

CATEGORIES =		graphics

HOMEPAGE =		http://ukoethe.github.io/vigra/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

MASTER_SITES = https://github.com/ukoethe/vigra/releases/download/Version-${V}/

# MIT
PERMIT_PACKAGE_CDROM = 	Yes

WANTLIB += Half Iex IlmImf IlmThread Imath boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_system-mt boost_thread-mt
WANTLIB += fftw3 jpeg m png pthread tiff z ${COMPILER_LIBCXX}

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

# Actually, there are tests, but they do work only on GCC.
# If you want to play, just add -DAUTOBUILD_TESTS=ON to CONFIGURE_ARGS.
# Building tests does not affect packaging.
NO_TEST =		Yes

WRKDIST = 		${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
