# $OpenBSD: Makefile,v 1.3 2017/05/26 05:42:58 kirby Exp $

COMMENT =		image processing and analysis library

GH_ACCOUNT =		ukoethe
GH_PROJECT =		vigra
GH_TAGNAME = 		Version-1-11-1
DISTNAME =		vigra-1.11.1

SHARED_LIBS =		vigraimpex 0.0 # 5.1

CATEGORIES =		graphics

HOMEPAGE =		http://ukoethe.github.io/vigra/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM = 	Yes

WANTLIB += Half Iex IlmImf IlmThread Imath boost_atomic-mt boost_chrono-mt
WANTLIB += boost_date_time-mt boost_system-mt boost_thread-mt
WANTLIB += fftw3 jpeg m png pthread tiff z

MODULES =		devel/cmake gcc4
MODGCC4_LANGS += 	c++
MODGCC4_ARCHS = 	*
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
			-DAUTOBUILD_TESTS=ON \
			-DAUTOEXEC_TESTS:BOOL=OFF

CXXFLAGS += 		-std=c++11 -pthread

WRKDIST = 		${WRKDIR}/vigra-e46259f9d511a5dc01d7e4548a596f33f72f3bef

.include <bsd.port.mk>
