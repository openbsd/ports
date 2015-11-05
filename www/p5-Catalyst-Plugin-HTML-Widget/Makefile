# $OpenBSD: Makefile,v 1.12 2015/11/05 19:09:00 jca Exp $

COMMENT= 	HTML widget and validation framework for Catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-HTML-Widget-1.1
REVISION=	3
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		www/p5-HTML-Widget

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
