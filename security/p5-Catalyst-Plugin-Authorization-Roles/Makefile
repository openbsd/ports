# $OpenBSD: Makefile,v 1.6 2008/09/13 15:39:59 simon Exp $

COMMENT= 	role based authorization for Catalyst

DISTNAME=	Catalyst-Plugin-Authorization-Roles-0.07
CATEGORIES=	security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

RUN_DEPENDS=	::devel/p5-Set-Object \
		::devel/p5-Universal-isa \
		::security/p5-Catalyst-Plugin-Authentication
REGRESS_DEPENDS=::devel/p5-Test-Exception

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
