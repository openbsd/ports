# $OpenBSD: Makefile,v 1.15 2020/07/03 21:45:57 sthen Exp $

COMMENT= 	HTML widget and validation framework for Catalyst

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Plugin-HTML-Widget-1.1
REVISION=	4
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		www/p5-HTML-Widget

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
