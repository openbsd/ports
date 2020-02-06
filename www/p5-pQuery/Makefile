# $OpenBSD: Makefile,v 1.12 2020/02/06 14:37:54 benoit Exp $

COMMENT=	perl port of jQuery.js

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	pQuery-0.24
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

CPAN_AUTHOR=	INGY

RUN_DEPENDS=	www/p5-HTML-Tree
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
