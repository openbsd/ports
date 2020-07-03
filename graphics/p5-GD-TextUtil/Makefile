# $OpenBSD: Makefile,v 1.27 2020/07/03 21:45:23 sthen Exp $

COMMENT=	text utilities for use with GD drawing package

VERSION=	0.86
DISTNAME=	GDTextUtil-${VERSION}
PKGNAME=	p5-GD-TextUtil-${VERSION}
REVISION=	3
CATEGORIES=	graphics

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}

RUN_DEPENDS=	graphics/p5-GD
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

.include <bsd.port.mk>
