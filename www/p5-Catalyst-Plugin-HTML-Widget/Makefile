# $OpenBSD: Makefile,v 1.11 2015/01/21 14:42:33 sthen Exp $

COMMENT= 	HTML widget and validation framework for Catalyst

MODULES=	cpan
DISTNAME=	Catalyst-Plugin-HTML-Widget-1.1
REVISION=	2
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-Catalyst-Runtime \
		www/p5-HTML-Widget

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
