# $OpenBSD: Makefile,v 1.1140 2021/01/30 14:14:38 kn Exp $

COMMENT =	exceptions to pkg_add rules
CATEGORIES =	devel databases
DISTFILES =

# API.rev
PKGNAME =	quirks-3.528
PKG_ARCH =	*
MAINTAINER =	Marc Espie <espie@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

PERLDIR =	${PREFIX}/libdata/perl5/site_perl

do-build:
	@find ${FILESDIR} -type f -name \*.pm -exec perl -c {} \;

do-install:
	${INSTALL_DATA_DIR} ${PERLDIR}/OpenBSD/Quirks
	${INSTALL_DATA} ${FILESDIR}/Quirks.pm ${PERLDIR}/OpenBSD/Quirks.pm
	${INSTALL_DATA} ${FILESDIR}/Quirks/ghc.pm ${PERLDIR}/OpenBSD/Quirks/ghc.pm

.include <bsd.port.mk>
