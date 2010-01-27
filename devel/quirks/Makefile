# $OpenBSD: Makefile,v 1.11 2010/01/27 11:31:41 kili Exp $

COMMENT =	exceptions to pkg_add rules
CATEGORIES =	devel databases
DISTFILES =

# API.rev
PKGNAME = 	quirks-1.9
PKG_ARCH =	*
MAINTAINER =	Marc Espie <espie@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM = 	Yes
PERMIT_PACKAGE_FTP = 	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

NO_BUILD =	Yes

PERLDIR =	${PREFIX}/libdata/perl5/site_perl

do-install:
	${INSTALL_DATA_DIR} ${PERLDIR}/OpenBSD
	${INSTALL_DATA} ${FILESDIR}/Quirks.pm ${PERLDIR}/OpenBSD/Quirks.pm

.include <bsd.port.mk>
