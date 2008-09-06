# $OpenBSD: Makefile,v 1.1.1.1 2008/09/06 09:53:08 simon Exp $


COMMENT =	check syntax, presence of use strict; and test coverage

MODULES =	cpan
DISTNAME =	Test-Strict-0.09
CATEGORIES =	devel

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

RUN_DEPENDS =	::devel/p5-Devel-Cover

MAKE_ENV +=	TEST_POD=1

.include <bsd.port.mk>
