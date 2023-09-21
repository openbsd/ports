COMMENT =	Z-80 macro cross assembler and ld80 CP/M linker
DISTNAME =	zmac-20221018
CATEGORIES =	devel

HOMEPAGE =	http://48k.ca/zmac.html
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Public Domain
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

SITES =		https://github.com/ibara/ports/releases/download/v1.0/

COMPILER =	base-clang ports-gcc

BUILD_DEPENDS =	devel/bison

MAKE_FLAGS =	CC="${CC}" CXX="${CXX}" \
		FLAGS="${CFLAGS}" CXXFLAGS="${CXXFLAGS}" \
		YACC=bison YFLAGS="-o y.tab.c"

NO_TEST =	Yes

# No install routine.
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zmac/zmac ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/ld80/ld80 ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/ld80/ld80.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
