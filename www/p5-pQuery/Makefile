# $OpenBSD: Makefile,v 1.13 2020/07/03 21:46:07 sthen Exp $

COMMENT=	perl port of jQuery.js

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	pQuery-0.24
CATEGORIES=	www
REVISION =	0

# Perl
PERMIT_PACKAGE=	Yes

CPAN_AUTHOR=	INGY

RUN_DEPENDS=	www/p5-HTML-Tree
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
