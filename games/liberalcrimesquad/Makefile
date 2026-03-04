COMMENT =	politics and government game with liberal bias
V =		4.10.0
GH_ACCOUNT =	Kamal-Sadek
GH_PROJECT =	Liberal-Crime-Squad
GH_TAGNAME =	v${V}
PKGNAME =	liberalcrimesquad-${V}
CATEGORIES =	games
REVISION =	3

HOMEPAGE =	http://lcs.wikidot.com/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c curses iconv m

# C++11
COMPILER =	base-clang ports-gcc base-gcc

CXXFLAGS_base-clang =	-std=c++11

LIB_DEPENDS =	converters/libiconv

RUN_DEPENDS =	devel/desktop-file-utils

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-liconv"

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

.include <bsd.port.mk>
