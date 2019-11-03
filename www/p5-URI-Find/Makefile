# $OpenBSD: Makefile,v 1.13 2019/11/03 14:07:46 jasper Exp $

COMMENT=		find URIs in arbitrary text

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		URI-Find-0.16
REVISION=		2
CATEGORIES=		www

# Artistic/GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		www/p5-URI>=1.00
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
