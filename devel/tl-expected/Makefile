COMMENT =	C++11/14/17 std::expected with functional-style extensions

GH_ACCOUNT =		TartanLlama
GH_PROJECT =		expected
GH_TAGNAME =		v1.3.1
PKGNAME =		tl-${DISTNAME}
CATEGORIES =		devel

HOMEPAGE =		https://tl.tartanllama.xyz

# CC0 1.0 Universal (public domain)
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# C++11 or higher
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c++

MODULES =		devel/cmake

# wants to fetch old Catch2, using devel/catch2 is not supported
CONFIGURE_ARGS =	-DBUILD_TESTING=OFF

# only tests are built, defer compilation to running tests
NO_BUILD =		Yes

.include <bsd.port.mk>
