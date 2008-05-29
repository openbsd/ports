# $OpenBSD: Makefile,v 1.1.1.1 2008/05/29 18:36:02 simon Exp $

COMMENT = 	storage class for Catalyst Authentication using DBIx::Class

MODULES =	cpan
DISTNAME =	Catalyst-Authentication-Store-DBIx-Class-0.104
CATEGORIES =	security

MAINTAINER =	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS =	::databases/p5-DBIx-Class \
		:p5-Catalyst-Plugin-Authentication->=0.10006:security/p5-Catalyst-Plugin-Authentication \
		::www/p5-Catalyst-Runtime
BUILD_DEPENDS =	${RUN_DEPENDS}

MAKE_ENV =	TEST_POD=Yes

.include <bsd.port.mk>
