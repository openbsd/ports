# $OpenBSD: Makefile,v 1.1339 2022/01/02 02:42:31 daniel Exp $

COMMENT =	exceptions to pkg_add rules
CATEGORIES =	devel databases
DISTFILES =

# API.rev
PKGNAME =	quirks-4.92
PKG_ARCH =	*
MAINTAINER =	Marc Espie <espie@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

PERLDIR =	${PREFIX}/libdata/perl5/site_perl

NO_TEST =	Yes

do-build:
	perl -Mlib=${FILESDIR} ${FILESDIR}/t >${WRKDIR}/result
	cmp ${WRKDIR}/result ${FILESDIR}/reference

do-install:
	${INSTALL_DATA_DIR} ${PERLDIR}/OpenBSD/Quirks
	${INSTALL_DATA} ${FILESDIR}/Quirks.pm ${PERLDIR}/OpenBSD/Quirks.pm

.include <bsd.port.mk>
