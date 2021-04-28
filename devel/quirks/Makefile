# $OpenBSD: Makefile,v 1.1251 2021/04/28 09:18:26 espie Exp $

COMMENT =	exceptions to pkg_add rules
CATEGORIES =	devel databases
DISTFILES =

# API.rev
PKGNAME =	quirks-4.5
PKG_ARCH =	*
MAINTAINER =	Marc Espie <espie@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

PERLDIR =	${PREFIX}/libdata/perl5/site_perl

NO_TEST =	Yes

do-build:
	#perl -Mlib=${FILESDIR} ${FILESDIR}/t 
	perl -Mlib=${FILESDIR} ${FILESDIR}/t >${WRKDIR}/result
	cmp ${WRKDIR}/result ${FILESDIR}/reference

do-install:
	${INSTALL_DATA_DIR} ${PERLDIR}/OpenBSD/Quirks
	${INSTALL_DATA} ${FILESDIR}/Quirks.pm ${PERLDIR}/OpenBSD/Quirks.pm

.include <bsd.port.mk>
