# $OpenBSD: Makefile,v 1.5 2020/07/07 08:08:05 thfr Exp $

COMMENT =	API and commands for processing SPIR-V

V =		2020.3
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

MODULES =	devel/cmake \
		lang/python

MODPY_RUNDEP =	No
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =	graphics/spirv-headers

CONFIGURE_ARGS =	-DSPIRV-Headers_SOURCE_DIR="${LOCALBASE}"

# effcee is missing to build tests
NO_TEST =	Yes

.include <bsd.port.mk>
