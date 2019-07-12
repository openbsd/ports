# $OpenBSD: Makefile,v 1.11 2019/07/12 20:50:59 sthen Exp $

COMMENT=	perl port of jQuery.js

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	pQuery-0.23
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE=	Yes

CPAN_AUTHOR=	INGY

RUN_DEPENDS=	www/p5-HTML-Tree
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
