# $OpenBSD: Makefile,v 1.9 2016/03/20 19:57:23 naddy Exp $

COMMENT=	perl port of jQuery.js

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	pQuery-0.23
CATEGORIES=	www

MAINTAINER=	Girish Venkatachalam <girish1729@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=	INGY

RUN_DEPENDS=	www/p5-HTML-Tree
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
