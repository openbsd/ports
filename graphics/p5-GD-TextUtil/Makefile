# $OpenBSD: Makefile,v 1.23 2013/10/11 23:49:50 naddy Exp $

COMMENT=	text utilities for use with GD drawing package

VERSION=	0.86
DISTNAME=	GDTextUtil-${VERSION}
PKGNAME=	p5-GD-TextUtil-${VERSION}
REVISION=	1
CATEGORIES=	graphics

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}

RUN_DEPENDS=	graphics/p5-GD
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan

.include <bsd.port.mk>
