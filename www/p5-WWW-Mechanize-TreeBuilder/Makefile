# $OpenBSD: Makefile,v 1.13 2019/07/12 20:50:58 sthen Exp $

COMMENT= 	combines WWW::Mechanize and HTML::TreeBuilder

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	WWW-Mechanize-TreeBuilder-1.20000
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-MooseX-Role-Parameterized \
		www/p5-WWW-Mechanize \
		www/p5-HTML-Tree

TEST_DEPENDS=devel/p5-Test-WWW-Mechanize \
		www/p5-HTML-TreeBuilder-XPath

.include <bsd.port.mk>
