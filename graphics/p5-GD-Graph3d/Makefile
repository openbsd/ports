# $OpenBSD: Makefile,v 1.12 2004/06/26 07:35:07 xsa Exp $

COMMENT=	"module for 3D graph plotting"

VERSION=	0.61
DISTNAME=	GD-Graph3d-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}

MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# GPL/Artistic licence
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=	:p5-GD-Graph->=1.30:graphics/p5-GD-Graph
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl

pre-patch:
	@perl -pi -e 's/\r//' ${WRKSRC}/lib/GD/Graph3d.pm

.include <bsd.port.mk>
