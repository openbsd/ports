# $OpenBSD: Makefile,v 1.15 2015/11/09 08:30:02 benoit Exp $

COMMENT=	ACL support for Catalyst applications

DISTNAME =	Catalyst-Plugin-Authorization-ACL-0.16
CATEGORIES=	security

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		security/p5-Catalyst-Plugin-Authentication \
		security/p5-Catalyst-Plugin-Authorization-Roles \
		devel/p5-Class-Data-Inheritable \
		devel/p5-Class-Throwable \
		devel/p5-Moose \
		devel/p5-MRO-Compat \
		devel/p5-namespace-autoclean \
		devel/p5-Tree-Simple \
		devel/p5-Tree-Simple-VisitorFactory

TEST_DEPENDS=	devel/p5-Test-WWW-Mechanize-Catalyst \
		www/p5-Catalyst-Plugin-Session \
		www/p5-Catalyst-Plugin-Session-State-Cookie

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
