# $OpenBSD: Makefile,v 1.1.1.1 2018/08/08 15:24:47 bcallah Exp $

COMMENT =	system for sequential logic synthesis and verification
DISTNAME =	abc-1.01.20180722
CATEGORIES =	cad

GH_ACCOUNT =	berkeley-abc
GH_PROJECT =	abc
GH_COMMIT =	ae6716b064c842f45109a88e84dca71fe4cc311f

HOMEPAGE =	https://people.eecs.berkeley.edu/~alanmi/abc
MAINTAINER =	Alessandro De Laurenzis <just22@atlantide.t28.net>

# MIT (abc, MiniSat, xSAT), BSD (bzlib, CUDD, satoko), zlib
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} c curses m readline

MODULES =	devel/cmake

USE_GMAKE =	Yes

NO_TEST =	Yes

pre-configure:
	@ln -s `which ${MAKE_PROGRAM}` ${WRKDIR}/bin/make

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/abc ${PREFIX}/bin

.include <bsd.port.mk>
