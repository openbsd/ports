COMMENT =	run command with randomized parameters

CATEGORIES = 	sysutils
MAINTAINER = 	Marc Espie <espie@openbsd.org>

DIST_TUPLE =	github marcespie random_run 2.17 .

COMPILER =	base-clang ports-gcc

# BSD licence
PERMIT_PACKAGE= Yes
NO_TEST = 	Yes

# uses pledge()
WANTLIB =	${COMPILER_LIBCXX} c m

MAKE_FLAGS =	OPTIMIZE="${CXXFLAGS}" LDFLAGS="${DEBUG} ${LDFLAGS}"

DEBUG_PACKAGES = ${BUILD_PACKAGES}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/rr ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rr.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
