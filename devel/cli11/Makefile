COMMENT =		command line parser for C++11

PKGNAME =		${DISTNAME:L}

GH_ACCOUNT =		CLIUtils
GH_PROJECT =		CLI11
GH_TAGNAME =		v2.4.2

CATEGORIES =		devel
HOMEPAGE =		https://cliutils.github.io/CLI11/book/
MAINTAINER =		Johannes Thyssen Tishman <ports@thyssentishman.com>

# BSD 3-clause
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake

BUILD_DEPENDS =		devel/boost \
			devel/catch2

CONFIGURE_ARGS =	-DCLI11_BUILD_DOCS=OFF \
			-DCLI11_BUILD_EXAMPLES=OFF \
			-DCLI11_BUILD_EXAMPLES_JSON=OFF \
			-DCLI11_BUILD_TESTS=ON \
			-DCLI11_BOOST=ON

.include <bsd.port.mk>
