# $OpenBSD: Makefile,v 1.9 2013/03/11 11:44:47 espie Exp $

COMMENT= 	combines WWW::Mechanize and HTML::TreeBuilder

MODULES=	cpan

DISTNAME=	WWW-Mechanize-TreeBuilder-1.10003
REVISION=	1
CATEGORIES=	www
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-MooseX-Role-Parameterized \
		www/p5-WWW-Mechanize \
		www/p5-HTML-Tree

TEST_DEPENDS=devel/p5-Test-WWW-Mechanize \
		www/p5-HTML-TreeBuilder-XPath

.include <bsd.port.mk>
