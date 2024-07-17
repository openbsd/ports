UNLINKED = libva

ONLY_FOR_ARCHS =	amd64

COMMENT =	Intel Graphics Memory Management Library

VERSION =	22.3.19
GH_ACCOUNT =	intel
GH_PROJECT =	gmmlib
GH_TAGNAME =	intel-gmmlib-${VERSION}

DISTNAME =	${GH_TAGNAME}

SHARED_LIBS +=  igdgmm                    0.0 # 0.0

HOMEPAGE =	https://01.org/intel-media-for-linux

CATEGORIES =	graphics multimedia

WANTLIB += ${COMPILER_LIBCXX} m

# MIT & BSD-3-Clause
PERMIT_PACKAGE =	Yes

MODULES =	devel/cmake

COMPILER =	base-clang ports-gcc

# XXX Unbundle googletest
CONFIGURE_ARGS =	-DRUN_TEST_SUITE=OFF

.include <bsd.port.mk>
