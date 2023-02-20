COMMENT =		backtracking regular expression engine
GH_ACCOUNT =		google
GH_PROJECT =		re2
GH_TAGNAME =		2023-02-01
PKGNAME =		${GH_PROJECT}-${GH_TAGNAME:S/-//g}

SHARED_LIBS =		re2	0.0	# 10.0.0

CATEGORIES =		textproc devel

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} m

# C++11
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
