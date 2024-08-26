ONLY_FOR_ARCHS =	${CLANG_ARCHS}

COMMENT =		threading building blocks

V =			2021.13.0
GH_ACCOUNT =		oneapi-src
GH_PROJECT =		oneTBB
GH_TAGNAME =		v${V}
PKGNAME =		tbb-${V}

SHARED_LIBS +=		tbb		2.0	# 2021.13
SHARED_LIBS +=		tbbmalloc	2.0	# 2021.13
SHARED_LIBS +=		tbbmalloc_proxy	0.0	# 2021.13

CATEGORIES =		devel

HOMEPAGE =		https://software.intel.com/en-us/tbb

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER =		base-clang ports-clang

MODULES =		devel/cmake

.include <bsd.port.mk>
