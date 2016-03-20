# $OpenBSD: Makefile,v 1.8 2016/03/20 19:57:19 naddy Exp $

COMMENT=	fine-grained html-filter, xss-blocker and mailto-obfuscator

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	HTML-TagFilter-1.03
REVISION=	1
CATEGORIES=	www

# Perl
PERMIT_PACKAGE_CDROM=  Yes

RUN_DEPENDS=	www/p5-HTML-Parser \
		www/p5-URI

.include <bsd.port.mk>
