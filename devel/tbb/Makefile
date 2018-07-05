# $OpenBSD: Makefile,v 1.1.1.1 2018/07/05 09:14:55 bentley Exp $

ONLY_FOR_ARCHS =	${CLANG_ARCHS}

COMMENT =		threading building blocks

PKGNAME =		tbb-${GH_TAGNAME:S/_U/./}

GH_ACCOUNT =		01org
GH_PROJECT =		tbb
GH_TAGNAME =		2018_U5

SHARED_LIBS +=		tbb 0.0
SHARED_LIBS +=		tbbmalloc 0.0

CATEGORIES =		devel

HOMEPAGE =		https://www.threadingbuildingblocks.org/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} m

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
