# $OpenBSD: Makefile,v 1.2 2019/04/25 22:13:22 espie Exp $

# TODO awaiting the gcc8 switch
ONLY_FOR_ARCHS = ${CLANG_ARCHS}

COMMENT =	run command with randomized parameters
CATEGORIES = 	sysutils
MAINTAINER = 	Marc Espie <espie@openbsd.org>

GH_PROJECT = 	random_run
GH_TAGNAME = 	1.2
GH_ACCOUNT = 	marcespie

COMPILER =	base-clang ports-gcc

# BSD licence
PERMIT_PACKAGE_CDROM = Yes
NO_TEST = 	Yes

WANTLIB =	${COMPILER_LIBCXX} c m

MAKE_FLAGS =	OPTIMIZE="${CXXFLAGS}" LDFLAGS="${LDFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/rr ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rr.1 ${PREFIX}/man/man1


.include <bsd.port.mk>
