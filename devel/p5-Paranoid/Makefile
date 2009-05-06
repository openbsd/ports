# $OpenBSD: Makefile,v 1.3 2009/05/06 23:13:54 simon Exp $

COMMENT =	paranoia support for safer programs

MODULES =	cpan
DISTNAME =	Paranoid-0.23
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
