COMMENT =	run command with randomized parameters
CATEGORIES = 	sysutils
MAINTAINER = 	Marc Espie <espie@openbsd.org>

DIST_TUPLE =	github marcespie random_run 2.15 .

COMPILER =	base-clang ports-gcc

# BSD licence
PERMIT_PACKAGE= Yes
NO_TEST = 	Yes

# need to add this for gcc
# revisit when gcc drops it
EXTRA_ports-gcc =	-lstdc++fs
EXTRA_base-clang =	
LDLIBS += 	${EXTRA_${CHOSEN_COMPILER}}

WANTLIB =	${COMPILER_LIBCXX} c m

MAKE_FLAGS =	OPTIMIZE="${CXXFLAGS}" LDFLAGS="${DEBUG} ${LDFLAGS}" LDLIBS="${LDLIBS}"
DEBUG_PACKAGES = ${BUILD_PACKAGES}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/rr ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rr.1 ${PREFIX}/man/man1


.include <bsd.port.mk>
