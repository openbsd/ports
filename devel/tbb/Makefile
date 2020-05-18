# $OpenBSD: Makefile,v 1.4 2020/05/18 16:42:20 cwen Exp $

ONLY_FOR_ARCHS =	${CLANG_ARCHS}

COMMENT =		threading building blocks

V =			2020.2
GH_ACCOUNT =		oneapi-src
GH_PROJECT =		oneTBB
GH_TAGNAME =		v${V}
PKGNAME =		tbb-${V}

SHARED_LIBS +=		tbb		1.0	#2020.2
SHARED_LIBS +=		tbbmalloc	1.0	#2020.2

CATEGORIES =		devel

HOMEPAGE =		https://software.intel.com/en-us/tbb

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

# We only provide configuration for base-clang (see files/)
COMPILER =		base-clang ports-clang

MAKE_FLAGS =		CONLY="${CC}" \
			CPLUS="${CXX}" \
			CC="${CC}" \
			CXX="${CXX}" \
			CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS}" \
			TBB.DLL="libtbb.so.${LIBtbb_VERSION}" \
			MALLOC.DLL="libtbbmalloc.so.${LIBtbbmalloc_VERSION}"

USE_GMAKE =		Yes

# Don't run time-consuming examples like fractal generators during build...
ALL_TARGET =		tbb tbbmalloc tbbproxy
TEST_TARGET =		test examples

post-extract:
	cp ${FILESDIR}/OpenBSD*.inc ${WRKSRC}/build

do-install:
	${INSTALL_DATA} ${WRKSRC}/build/OpenBSD*_release/*.so.* ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include/tbb
	cp -R ${WRKSRC}/include/tbb/* ${PREFIX}/include/tbb

.include <bsd.port.mk>
