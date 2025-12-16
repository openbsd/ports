COMMENT =		URI parsing library

GH_ACCOUNT =		uriparser
GH_PROJECT =		uriparser
GH_TAGNAME =		uriparser-1.0.0
PKGNAME =		${GH_TAGNAME}

# (ver from CMakeLists.txt URIPARSER_SO_CURRENT and URIPARSER_SO_REVISION)
SHARED_LIBS +=  uriparser 4.1	# 3.0

CATEGORIES =		www

HOMEPAGE =		https://uriparser.github.io/

# BSD 3-clause
PERMIT_PACKAGE =	Yes

WANTLIB += c

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES =		devel/cmake
SUBST_VARS +=		GH_TAGNAME

CONFIGURE_ARGS =	-DURIPARSER_BUILD_DOCS=off

# requires googletest
CONFIGURE_ARGS +=	-DURIPARSER_BUILD_TESTS=off
NO_TEST =		Yes

.include <bsd.port.mk>
