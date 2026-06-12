COMMENT =	parse and convert SPIR-V to other shader languages

VERSION =	2026-06-01
DIST_TUPLE =	github KhronosGroup SPIRV-Cross 146679ff8255a6068518685599d7fb8761d1b570 .
PKGNAME =	spirv-cross-${VERSION:S/-//g}

SHARED_LIBS +=	spirv-cross-c-shared	0.1

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

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

.include <bsd.port.mk>
