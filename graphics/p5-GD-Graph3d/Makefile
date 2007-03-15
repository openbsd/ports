# $OpenBSD: Makefile,v 1.15 2007/03/15 11:30:07 jolan Exp $

COMMENT=	"module for 3D graph plotting"

VERSION=	0.61
DISTNAME=	GD-Graph3d-${VERSION}
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	graphics

# GPL/Artistic licence
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-GD-Graph->=1.30:graphics/p5-GD-Graph

MODULES=	cpan

pre-patch:
	@perl -pi -e 's/\r//' ${WRKSRC}/lib/GD/Graph3d.pm

.include <bsd.port.mk>
