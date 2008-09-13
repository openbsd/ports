# $OpenBSD: Makefile,v 1.6 2008/09/13 15:38:37 simon Exp $

COMMENT= 	ACL support for Catalyst applications

DISTNAME=	Catalyst-Plugin-Authorization-ACL-0.09
CATEGORIES=	security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	::www/p5-Catalyst-Runtime \
		::devel/p5-Class-Throwable

REGRESS_DEPENDS=::devel/p5-Test-WWW-Mechanize-Catalyst \
		::security/p5-Catalyst-Plugin-Authorization-Roles \
		::security/p5-Catalyst-Plugin-Authentication \
		::www/p5-Catalyst-Plugin-Session \
		::www/p5-Catalyst-Plugin-Session-State-Cookie

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
