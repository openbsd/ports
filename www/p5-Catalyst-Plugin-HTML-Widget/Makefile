# $OpenBSD: Makefile,v 1.13 2016/03/20 19:57:15 naddy Exp $

COMMENT= 	HTML widget and validation framework for Catalyst

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Plugin-HTML-Widget-1.1
REVISION=	3
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		www/p5-HTML-Widget

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
