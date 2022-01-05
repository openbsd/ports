# $OpenBSD: Makefile,v 1.3 2022/01/05 09:52:16 kn Exp $

COMMENT =		range library for C++14/17/20

GH_ACCOUNT =		ericniebler
GH_PROJECT =		range-v3
GH_TAGNAME =		0.11.0
REVISION =		0
CATEGORIES =		devel

LIBCPP_COMMIT =		0487cca29e352e8f16bbd91fda38e76e39a0ed28
MASTER_SITES0 =		${MASTER_SITES_GITHUB:H:H:H}/commit/
PATCHFILES =		${DISTNAME}-clang13-libcpp-fix{${LIBCPP_COMMIT}}.patch:0
PATCH_DIST_STRIP =	-p1

# BSL 1.0 (boost software license)
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# C++14 or higher
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c++

MODULES =		devel/cmake

# disable hardare specific optimizations
CONFIGURE_ARGS +=	-DRANGES_NATIVE=OFF

# avoid using doxygen (configure would still detect it)
CONFIGURE_ARGS +=	-DRANGE_V3_DOCS=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

# avoid picking up git and fetching during tests
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

# avoid picking up boost due to this example (configure would still detect it)
CONFIGURE_ARGS +=	-DRANGES_BUILD_CALENDAR_EXAMPLE=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Boost=ON
# not needed for now
CONFIGURE_ARGS +=	-DRANGE_V3_EXAMPLES=OFF

# just header files
PKG_ARCH =		*

# compile tests only when testing
NO_BUILD =		Yes

pre-test:
	${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
