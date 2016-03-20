# $OpenBSD: Makefile,v 1.8 2016/03/20 19:57:18 naddy Exp $

COMMENT=	resolve relative links in (X)HTML into absolute URI

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-ResolveLink-0.05
REVISION=	1
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser \
		www/p5-URI

.include <bsd.port.mk>
