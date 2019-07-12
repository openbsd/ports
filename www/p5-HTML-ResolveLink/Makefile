# $OpenBSD: Makefile,v 1.9 2019/07/12 20:50:54 sthen Exp $

COMMENT=	resolve relative links in (X)HTML into absolute URI

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-ResolveLink-0.05
REVISION=	1
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser \
		www/p5-URI

.include <bsd.port.mk>
