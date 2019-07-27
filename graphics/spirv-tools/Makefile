# $OpenBSD: Makefile,v 1.3 2019/07/27 15:47:35 thfr Exp $

COMMENT =	API and commands for processing SPIR-V

V =		2019.3
DISTNAME =	spirv-tools-${V}
GH_ACCOUNT =	KhronosGroup
GH_PROJECT =	SPIRV-Tools
GH_TAGNAME =	v${V}

CATEGORIES =	devel graphics

HOMEPAGE =	https://www.khronos.org/vulkan/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake
BUILD_DEPENDS =	graphics/spirv-headers

CONFIGURE_ARGS =	-DSPIRV_HEADER_DIR="${LOCALBASE}"

# effcee is missing to build tests
NO_TEST =	Yes

.include <bsd.port.mk>
