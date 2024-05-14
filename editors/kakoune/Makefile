COMMENT =		modal code editor with a focus on interactivity

V =			2024.05.09
DISTNAME =		kakoune-${V}

CATEGORIES =		editors

HOMEPAGE =		https://kakoune.org/

WANTLIB =		${COMPILER_LIBCXX} c m

SITES =			https://github.com/mawww/kakoune/releases/download/v${V}/

EXTRACT_SUFX =		.tar.bz2

# Public domain
PERMIT_PACKAGE =	Yes

# -std=c++2a
COMPILER =		base-clang
MAKE_ENV =		CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"
FAKE_FLAGS =		PREFIX="${TRUEPREFIX}"
# some tests fail without en_US.UTF-8
TEST_ENV =		LC_CTYPE="en_US.UTF-8"

USE_GMAKE =		Yes

.include <bsd.port.mk>
