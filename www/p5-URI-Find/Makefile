# $OpenBSD: Makefile,v 1.14 2020/07/03 21:46:06 sthen Exp $

COMMENT=		find URIs in arbitrary text

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		URI-Find-0.16
REVISION=		3
CATEGORIES=		www

# Artistic/GPL
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=		www/p5-URI>=1.00
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
