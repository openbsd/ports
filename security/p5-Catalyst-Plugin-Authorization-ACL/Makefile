# $OpenBSD: Makefile,v 1.12 2013/03/11 11:41:26 espie Exp $

COMMENT=	ACL support for Catalyst applications

DISTNAME=	Catalyst-Plugin-Authorization-ACL-0.15
CATEGORIES=	security

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
USE_GROFF =	Yes

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

TEST_DEPENDS=devel/p5-Test-WWW-Mechanize-Catalyst \
		www/p5-Catalyst-Plugin-Session \
		www/p5-Catalyst-Plugin-Session-State-Cookie

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
