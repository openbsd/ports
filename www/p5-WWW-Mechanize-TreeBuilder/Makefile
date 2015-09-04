# $OpenBSD: Makefile,v 1.11 2015/09/04 07:23:18 benoit Exp $

COMMENT= 	combines WWW::Mechanize and HTML::TreeBuilder

MODULES=	cpan

DISTNAME =	WWW-Mechanize-TreeBuilder-1.20000
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-MooseX-Role-Parameterized \
		www/p5-WWW-Mechanize \
		www/p5-HTML-Tree

TEST_DEPENDS=devel/p5-Test-WWW-Mechanize \
		www/p5-HTML-TreeBuilder-XPath

.include <bsd.port.mk>
