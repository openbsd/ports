# $OpenBSD: Makefile,v 1.1.1.1 2009/02/05 22:04:58 simon Exp $

COMMENT =	replaces actual time with simulated time

MODULES =	cpan
DISTNAME =	Test-MockTime-0.09
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
