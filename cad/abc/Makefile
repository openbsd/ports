# $OpenBSD: Makefile,v 1.3 2019/07/12 20:43:44 sthen Exp $

COMMENT =	system for sequential logic synthesis and verification
DISTNAME =	abc-1.01.20180722
CATEGORIES =	cad
REVISION =	0

GH_ACCOUNT =	berkeley-abc
GH_PROJECT =	abc
GH_COMMIT =	ae6716b064c842f45109a88e84dca71fe4cc311f

HOMEPAGE =	https://people.eecs.berkeley.edu/~alanmi/abc
MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.t28.net>

# MIT (abc, MiniSat, xSAT), BSD (bzlib, CUDD, satoko), zlib
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c curses m readline

COMPILER =		base-clang ports-gcc base-gcc

MODULES =	devel/cmake

USE_GMAKE =	Yes

NO_TEST =	Yes

pre-configure:
	@ln -s `which ${MAKE_PROGRAM}` ${WRKDIR}/bin/make

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/abc ${PREFIX}/bin

.include <bsd.port.mk>
