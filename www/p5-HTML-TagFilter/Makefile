# $OpenBSD: Makefile,v 1.6 2013/10/11 23:51:40 naddy Exp $

COMMENT=	fine-grained html-filter, xss-blocker and mailto-obfuscator

MODULES=	cpan
DISTNAME=	HTML-TagFilter-1.03
REVISION=	0
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=  Yes

RUN_DEPENDS=	www/p5-HTML-Parser \
		www/p5-URI

.include <bsd.port.mk>
