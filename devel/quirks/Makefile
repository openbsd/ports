# $OpenBSD: Makefile,v 1.1210 2021/03/01 13:11:18 sthen Exp $

COMMENT =	exceptions to pkg_add rules
CATEGORIES =	devel databases
DISTFILES =

# API.rev
PKGNAME =	quirks-3.597
PKG_ARCH =	*
MAINTAINER =	Marc Espie <espie@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

PERLDIR =	${PREFIX}/libdata/perl5/site_perl

NO_TEST =	Yes

do-build:
	@for i in `find ${FILESDIR} -type f -name \*.pm`; do \
	    perl -c $$i; done

do-install:
	${INSTALL_DATA_DIR} ${PERLDIR}/OpenBSD/Quirks
	${INSTALL_DATA} ${FILESDIR}/Quirks.pm ${PERLDIR}/OpenBSD/Quirks.pm
	${INSTALL_DATA} ${FILESDIR}/Quirks/ghc.pm ${PERLDIR}/OpenBSD/Quirks/ghc.pm

.include <bsd.port.mk>
