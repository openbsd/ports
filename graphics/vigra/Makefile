COMMENT =		image processing and analysis library
ONLY_FOR_ARCHS =	${CXX11_ARCHS}

V = 			1-11-2
GH_ACCOUNT =		ukoethe
GH_PROJECT =		vigra
GH_TAGNAME =		Version-${V}
DISTNAME =		vigra-${V:S/-/./g}

SHARED_LIBS =		vigraimpex 0.0 # 5.1

CATEGORIES =		graphics

HOMEPAGE =		http://ukoethe.github.io/vigra/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += Iex-3_2 IlmThread-3_2 Imath-3_1 OpenEXR-3_2 OpenEXRCore-3_2
WANTLIB += boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += boost_system-mt boost_thread-mt fftw3 jpeg m png tiff
WANTLIB += z ${COMPILER_LIBCXX}

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake
BUILD_DEPENDS = 	math/fftw3,float
LIB_DEPENDS =		devel/boost \
			graphics/jpeg \
			graphics/openexr \
			graphics/png \
			graphics/tiff \
			math/fftw3

CONFIGURE_ARGS =	-DBUILD_DOCS=0 \
			-DWITH_VIGRANUMPY=0 \
			-DDOCINSTALL=share/doc/ \
			-DWITH_BOOST_THREAD=1 \
			-DWITH_OPENEXR=1 \
			-DWITH_HDF5=0 \
			-DCREATE_CTEST_TARGETS=ON \
			-DAUTOEXEC_TESTS:BOOL=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes \
			-Wno-dev

# Fix build with OpenEXR>=3 (Imath split)
CXXFLAGS += 		-I${LOCALBASE}/include/Imath

# Actually, there are tests, but they do work only on GCC.
# If you want to play, just add -DAUTOBUILD_TESTS=ON to CONFIGURE_ARGS.
# Building tests does not affect packaging.
NO_TEST =		Yes

.include <bsd.port.mk>
