COMMENT =	parse and convert SPIR-V to other shader languages

VERSION =	2021-01-15
DIST_TUPLE =	github KhronosGroup SPIRV-Cross ${VERSION} .
PKGNAME =	spirv-cross-${VERSION:S/-//g}
REVISION =	0

SHARED_LIBS +=	spirv-cross-c-shared	0.0 # 0.0

CATEGORIES =	devel graphics

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

# C++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

MODPY_RUNDEP =	No

CONFIGURE_ARGS += -DCMAKE_DISABLE_FIND_PACKAGE_Git=TRUE \
		-DSPIRV_CROSS_SHARED=ON

.include <bsd.port.mk>
