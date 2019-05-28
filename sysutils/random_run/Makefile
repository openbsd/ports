# $OpenBSD: Makefile,v 1.13 2019/05/28 21:20:32 espie Exp $

COMMENT =	run command with randomized parameters
CATEGORIES = 	sysutils
MAINTAINER = 	Marc Espie <espie@openbsd.org>

GH_PROJECT = 	random_run
GH_TAGNAME = 	2.3
GH_ACCOUNT = 	marcespie

COMPILER =	base-clang ports-gcc

# BSD licence
PERMIT_PACKAGE_CDROM = Yes
NO_TEST = 	Yes

# need to add this for gcc
# revisit when gcc drops it
EXTRA_ports-gcc =	-lstdc++fs
LDFLAGS += 	${EXTRA_${CHOSEN_COMPILER}}

WANTLIB =	${COMPILER_LIBCXX} c m

MAKE_FLAGS =	OPTIMIZE="${CXXFLAGS}" LDFLAGS="${LDFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/rr ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rr.1 ${PREFIX}/man/man1


.include <bsd.port.mk>
