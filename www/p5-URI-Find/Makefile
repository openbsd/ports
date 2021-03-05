# $OpenBSD: Makefile,v 1.15 2021/03/05 12:51:06 sthen Exp $

COMMENT=		find URIs in arbitrary text

MODULES=		cpan
PKG_ARCH=		*
DISTNAME=		URI-Find-20160806
CATEGORIES=		www

# Artistic/GPL
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		www/p5-URI>=1.00
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
