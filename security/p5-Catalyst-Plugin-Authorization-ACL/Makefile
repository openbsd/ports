# $OpenBSD: Makefile,v 1.2 2006/11/28 11:09:51 espie Exp $

COMMENT= 	"ACL support for Catalyst applications"

DISTNAME=	Catalyst-Plugin-Authorization-ACL-0.08
CATEGORIES=	security

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
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
