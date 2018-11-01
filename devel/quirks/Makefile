# $OpenBSD: Makefile,v 1.635 2018/11/01 15:14:10 juanfra Exp $

COMMENT =	exceptions to pkg_add rules
CATEGORIES =	devel databases
DISTFILES =

# API.rev
PKGNAME =	quirks-3.28
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
