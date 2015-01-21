# $OpenBSD: Makefile,v 1.24 2015/01/21 06:13:48 bentley Exp $

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

.include <bsd.port.mk>
