# $OpenBSD: Makefile,v 1.22 2013/10/11 23:49:50 naddy Exp $

COMMENT =	module for 3D graph plotting

VERSION =	0.63
DISTNAME =	GD-Graph3d-${VERSION}
REVISION =	0
CATEGORIES =	graphics

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS=	graphics/p5-GD-Graph>=1.30

MODULES=	cpan

pre-patch:
	@perl -pi -e 's/\r//' ${WRKSRC}/lib/GD/Graph3d.pm

.include <bsd.port.mk>
