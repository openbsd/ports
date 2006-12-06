# $OpenBSD: Makefile,v 1.13 2006/12/06 17:55:52 jasper Exp $

COMMENT=	"module for 3D graph plotting"

VERSION=	0.61
DISTNAME=	GD-Graph3d-${VERSION}
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	graphics

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}

MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# GPL/Artistic licence
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-GD-Graph->=1.30:graphics/p5-GD-Graph
BUILD_DEPENDS=	${RUN_DEPENDS}

MODULES=	cpan

pre-patch:
	@perl -pi -e 's/\r//' ${WRKSRC}/lib/GD/Graph3d.pm

.include <bsd.port.mk>
