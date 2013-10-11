# $OpenBSD: Makefile,v 1.6 2013/10/11 23:51:38 naddy Exp $

COMMENT=	resolve relative links in (X)HTML into absolute URI

MODULES=	cpan
DISTNAME=	HTML-ResolveLink-0.05
REVISION=	0
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser \
		www/p5-URI

.include <bsd.port.mk>
