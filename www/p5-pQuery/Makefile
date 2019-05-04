# $OpenBSD: Makefile,v 1.10 2019/05/04 01:18:59 danj Exp $

COMMENT=	perl port of jQuery.js

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	pQuery-0.23
CATEGORIES=	www
REVISION=	0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

CPAN_AUTHOR=	INGY

RUN_DEPENDS=	www/p5-HTML-Tree
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
