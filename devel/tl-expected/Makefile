COMMENT =	c++11/14/17 std::expected with functional-style extensions

GH_ACCOUNT =		TartanLlama
GH_PROJECT =		expected
GH_TAGNAME =		v1.0.0
PKGNAME =		tl-${DISTNAME}
CATEGORIES =		devel
REVISION =		0

# cmake file for build and install;  no release or tags, use latest master
ADD_TL_COMMIT =		284c6a3f0f61823cc3871b0f193e8df699e2c4ce
MASTER_SITES0 =	https://raw.githubusercontent.com/${GH_ACCOUNT}/tl-cmake/${ADD_TL_COMMIT}/
DISTFILES =		${GH_DISTFILE} \
			add-tl.cmake:0
EXTRACT_ONLY =		${GH_DISTFILE}

HOMEPAGE =		https://tl.tartanllama.xyz

# CC0 1.0 Universal (public domain)
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# C++11 or higher
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c++

MODULES =		devel/cmake

# avoid network and point at prefetched SUPDISTFILES
CONFIGURE_ARGS +=	-DFETCHCONTENT_FULLY_DISCONNECTED=ON \
			-DFETCHCONTENT_SOURCE_DIR_TL_CMAKE=${FULLDISTDIR}

# just header files
PKG_ARCH =		*

# only tests are built, defer compilation to running tests
NO_BUILD =		Yes
TEST_TARGET =		tests

post-test:
	# actually run tests
	${WRKBUILD}/tests --order rand --durations yes

.include <bsd.port.mk>
