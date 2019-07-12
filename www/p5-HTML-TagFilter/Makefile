# $OpenBSD: Makefile,v 1.9 2019/07/12 21:02:28 sthen Exp $

COMMENT=	fine-grained html-filter, xss-blocker and mailto-obfuscator

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-TagFilter-1.03
REVISION=	1
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser \
		www/p5-URI

.include <bsd.port.mk>
