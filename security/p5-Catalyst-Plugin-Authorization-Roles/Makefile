# $OpenBSD: Makefile,v 1.4 2007/05/05 17:44:51 simon Exp $

COMMENT= 	"role based authorization for Catalyst"

DISTNAME=	Catalyst-Plugin-Authorization-Roles-0.05
PKGNAME=	p5-${DISTNAME}p1
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
REGRESS_DEPENDS=::devel/p5-Test-Exception \
		::devel/p5-Test-MockObject

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
