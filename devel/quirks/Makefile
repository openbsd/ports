# $OpenBSD: Makefile,v 1.625 2018/10/18 23:37:14 danj Exp $

COMMENT =	exceptions to pkg_add rules
CATEGORIES =	devel databases
DISTFILES =

# API.rev
PKGNAME =	quirks-3.18
PKG_ARCH =	*
MAINTAINER =	Marc Espie <espie@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

PERLDIR =	${PREFIX}/libdata/perl5/site_perl

do-build:
	@perl -c ${FILESDIR}/Quirks.pm

do-install:
	${INSTALL_DATA_DIR} ${PERLDIR}/OpenBSD
	${INSTALL_DATA} ${FILESDIR}/Quirks.pm ${PERLDIR}/OpenBSD/Quirks.pm

.include <bsd.port.mk>
