# $OpenBSD: Makefile,v 1.615 2018/09/23 17:09:18 awolk Exp $

COMMENT =	exceptions to pkg_add rules
CATEGORIES =	devel databases
DISTFILES =

# API.rev
PKGNAME =	quirks-3.8
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
