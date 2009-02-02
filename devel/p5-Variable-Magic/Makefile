# $OpenBSD: Makefile,v 1.1.1.1 2009/02/02 00:58:07 simon Exp $

COMMENT =	associate user-defined magic to variables from Perl
SHARED_ONLY =	Yes

MODULES =	cpan
DISTNAME =	Variable-Magic-0.28
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
