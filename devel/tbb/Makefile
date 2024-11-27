COMMENT =		threading building blocks

V =			2021.13.0
GH_ACCOUNT =		oneapi-src
GH_PROJECT =		oneTBB
GH_TAGNAME =		v${V}
PKGNAME =		tbb-${V}
REVISION =		1

SHARED_LIBS +=		tbb		2.0	# 2021.13
SHARED_LIBS +=		tbbmalloc	2.0	# 2021.13
SHARED_LIBS +=		tbbmalloc_proxy	0.0	# 2021.13

CATEGORIES =		devel

HOMEPAGE =		https://www.intel.com/content/www/us/en/developer/tools/oneapi/onetbb.html

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

.include <bsd.port.mk>
