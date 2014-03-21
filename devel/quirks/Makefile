# $OpenBSD: Makefile,v 1.125 2014/03/21 07:36:26 jasper Exp $

COMMENT =	exceptions to pkg_add rules
CATEGORIES =	devel databases
DISTFILES =

# API.rev
PKGNAME =	quirks-1.122
PKG_ARCH =	*
MAINTAINER =	Marc Espie <espie@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

NO_BUILD =	Yes

PERLDIR =	${PREFIX}/libdata/perl5/site_perl

do-install:
	${INSTALL_DATA_DIR} ${PERLDIR}/OpenBSD
	${INSTALL_DATA_DIR} ${PERLDIR}/OpenBSD/Quirks
	${INSTALL_DATA} ${FILESDIR}/Quirks.pm ${PERLDIR}/OpenBSD/Quirks.pm
	${INSTALL_DATA} ${FILESDIR}/Quirks/texlive.pm \
	    ${PERLDIR}/OpenBSD/Quirks/texlive.pm

.include <bsd.port.mk>
