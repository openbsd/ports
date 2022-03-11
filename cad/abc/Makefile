COMMENT =	system for sequential logic synthesis and verification
DISTNAME =	abc-1.01.20210519
CATEGORIES =	cad

GH_ACCOUNT =	berkeley-abc
GH_PROJECT =	abc
GH_COMMIT =	d35b05859c44015661d36aaaa2926e0dd5f3e4dc

HOMEPAGE =	https://people.eecs.berkeley.edu/~alanmi/abc
MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.mooo.com>

# MIT (abc, MiniSat, xSAT, glucose), BSD (bzlib, CUDD, satoko), zlib
PERMIT_PACKAGE = Yes

WANTLIB +=	${COMPILER_LIBCXX} c curses m readline

COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake

USE_GMAKE =	Yes

NO_TEST =	Yes

# make is called from cmakefile, and needs to be gmake:
pre-configure:
	@ln -s `which ${MAKE_PROGRAM}` ${WRKDIR}/bin/make

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/abc ${PREFIX}/bin

.include <bsd.port.mk>
