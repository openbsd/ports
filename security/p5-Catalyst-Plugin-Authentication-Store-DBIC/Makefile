# $OpenBSD: Makefile,v 1.6 2008/09/13 15:36:31 simon Exp $

COMMENT= 	CDBI Authentication for Catalyst

DISTNAME=	Catalyst-Plugin-Authentication-Store-DBIC-0.11
CATEGORIES=	security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	::databases/p5-DBIx-Class \
		::databases/p5-Catalyst-Model-DBIC-Schema \
		::devel/p5-Set-Object \
		::security/p5-Catalyst-Plugin-Authentication \
		::security/p5-Catalyst-Plugin-Authorization-Roles
BUILD_DEPENDS=	${RUN_DEPENDS}
REGRESS_DEPENDS=::databases/p5-DBD-SQLite \
		::www/p5-Catalyst-Plugin-Session-State-Cookie \
		::devel/p5-Test-WWW-Mechanize-Catalyst \
		::databases/p5-Class-DBI

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
