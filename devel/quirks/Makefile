# $OpenBSD: Makefile,v 1.434 2017/01/31 07:03:04 ajacoutot Exp $

COMMENT =	exceptions to pkg_add rules
CATEGORIES =	devel databases
DISTFILES =

# API.rev
PKGNAME =	quirks-2.279
PKG_ARCH =	*
MAINTAINER =	Marc Espie <espie@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

PERLDIR =	${PREFIX}/libdata/perl5/site_perl

do-build:
	@perl -c ${FILESDIR}/Quirks.pm
	# warning for File::Find::name is normal
	@perl -c ${FILESDIR}/Quirks/texlive.pm

do-install:
	${INSTALL_DATA_DIR} ${PERLDIR}/OpenBSD
	${INSTALL_DATA_DIR} ${PERLDIR}/OpenBSD/Quirks
	${INSTALL_DATA} ${FILESDIR}/Quirks.pm ${PERLDIR}/OpenBSD/Quirks.pm
	${INSTALL_DATA} ${FILESDIR}/Quirks/texlive.pm \
	    ${PERLDIR}/OpenBSD/Quirks/texlive.pm

.include <bsd.port.mk>
