# $OpenBSD: Makefile,v 1.24 2019/07/12 20:47:06 sthen Exp $

COMMENT =	module for 3D graph plotting

VERSION =	0.63
DISTNAME =	GD-Graph3d-${VERSION}
REVISION =	0
CATEGORIES =	graphics

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS=	graphics/p5-GD-Graph>=1.30

MODULES=	cpan
PKG_ARCH=	*

pre-patch:
	@perl -pi -e 's/\r//' ${WRKSRC}/lib/GD/Graph3d.pm

.include <bsd.port.mk>
