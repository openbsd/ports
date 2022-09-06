COMMENT =	journaling archiver for incremental backup, fork of ZPAQ

GH_ACCOUNT =	fcorbelli
GH_PROJECT =	zpaqfranz
GH_TAGNAME =	55.14

CATEGORIES =	archivers
MAINTAINER =	tux0r <tux0r@rosaelefanten.org>

# Public Domain
PERMIT_PACKAGE =	yes

FIX_CRLF_FILES =	Makefile zpaqfranz.cpp

COMPILER=	base-clang ports-gcc base-gcc

WANTLIB =	${COMPILER_LIBCXX} c m

MAKE_FLAGS +=	CXX="${CXX}" \
		CXXFLAGS="${CXXFLAGS}" \
		CPPFLAGS="${CPPFLAGS}"

CPPFLAGS +=	-Dunix
USE_WXNEEDED=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/zpaqfranz.1 ${PREFIX}/man/man1/

do-test:
	${WRKBUILD}/zpaqfranz autotest -all

.include <bsd.port.mk>
