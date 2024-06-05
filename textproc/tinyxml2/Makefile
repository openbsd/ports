COMMENT =		simple, small and efficient C++ XML parser

GH_ACCOUNT =		leethomason
GH_PROJECT =		tinyxml2
GH_TAGNAME =		10.0.0

SHARED_LIBS +=		tinyxml2	10.0 # 10.0

CATEGORIES =		textproc

HOMEPAGE =		https://github.com/leethomason/tinyxml2/

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB +=		m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake

CONFIGURE_ARGS +=	-DBUILD_SHARED_LIBS=ON

FIX_CRLF_FILES =	xmltest.cpp tinyxml2.cpp

do-test:
	cd ${WRKSRC} && ${CXX} xmltest.cpp tinyxml2.cpp tinyxml2.h && ./a.out

.include <bsd.port.mk>
