COMMENT =	journaling archiver for incremental backup, fork of ZPAQ

GH_ACCOUNT =	fcorbelli
GH_PROJECT =	zpaqfranz
GH_TAGNAME =	55.5

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
.if ${MACHINE_ARCH} == "amd64"
USE_WXNEEDED=	Yes
.else
CPPFLAGS +=	-DNOJIT
.endif

NO_TEST =	yes

.include <bsd.port.mk>
