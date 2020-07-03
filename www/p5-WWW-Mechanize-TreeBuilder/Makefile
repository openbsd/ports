# $OpenBSD: Makefile,v 1.14 2020/07/03 21:46:06 sthen Exp $

COMMENT= 	combines WWW::Mechanize and HTML::TreeBuilder

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	WWW-Mechanize-TreeBuilder-1.20000
CATEGORIES=	www
REVISION =	0

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-MooseX-Role-Parameterized \
		www/p5-WWW-Mechanize \
		www/p5-HTML-Tree

TEST_DEPENDS=devel/p5-Test-WWW-Mechanize \
		www/p5-HTML-TreeBuilder-XPath

.include <bsd.port.mk>
