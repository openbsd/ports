# $OpenBSD: Makefile,v 1.10 2002/09/21 11:56:31 avsm Exp $

COMMENT=	"module for 3D graph plotting"

DISTNAME=	GD-Graph3d-0.59
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}
MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

BUILD_DEPENDS=	:p5-GD-Graph->=1.30:graphics/p5-GD-Graph
RUN_DEPENDS=	${BUILD_DEPENDS}

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

pre-patch:
	@perl -pi -e 's/\r//' ${WRKSRC}/lib/GD/Graph3d.pm

.include <bsd.port.mk>
