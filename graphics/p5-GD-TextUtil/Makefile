# $OpenBSD: Makefile,v 1.25 2016/03/20 19:56:43 naddy Exp $

COMMENT=	text utilities for use with GD drawing package

VERSION=	0.86
DISTNAME=	GDTextUtil-${VERSION}
PKGNAME=	p5-GD-TextUtil-${VERSION}
REVISION=	2
CATEGORIES=	graphics

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}

RUN_DEPENDS=	graphics/p5-GD
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
PKG_ARCH=	*

.include <bsd.port.mk>
