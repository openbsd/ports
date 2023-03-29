COMMENT =	C++11/14/17 std::expected with functional-style extensions

GH_ACCOUNT =		TartanLlama
GH_PROJECT =		expected
GH_TAGNAME =		v1.1.0
PKGNAME =		tl-${DISTNAME}
CATEGORIES =		devel

DIST_SUBDIR =		tl-expected
MASTER_SITES0 =		https://github.com/${GH_ACCOUNT}/${GH_PROJECT}/
# pending "Added packaged Catch2 support and switched to v3"
PATCHFILES =		use-system-catch2-{pull/}141.patch:0
# pending "Fixed version number in exported CMake configs"
PATCHFILES +=		fix-version-{pull/}142.patch:0

PATCH_DIST_STRIP =	-p1

HOMEPAGE =		https://tl.tartanllama.xyz

# CC0 1.0 Universal (public domain)
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# C++11 or higher
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c++

MODULES =		devel/cmake

# only tests are built, defer compilation to running tests
NO_BUILD =		Yes

pre-test:
	@${MODCMAKE_BUILD_TARGET}

.include <bsd.port.mk>
