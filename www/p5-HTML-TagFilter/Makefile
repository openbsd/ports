# $OpenBSD: Makefile,v 1.10 2020/07/03 21:46:01 sthen Exp $

COMMENT=	fine-grained html-filter, xss-blocker and mailto-obfuscator

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-TagFilter-1.03
REVISION=	2
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-HTML-Parser \
		www/p5-URI

.include <bsd.port.mk>
