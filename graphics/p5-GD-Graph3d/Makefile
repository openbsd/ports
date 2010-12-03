# $OpenBSD: Makefile,v 1.20 2010/12/03 11:45:37 ajacoutot Exp $

COMMENT =	module for 3D graph plotting

VERSION =	0.63
DISTNAME =	GD-Graph3d-${VERSION}
REVISION =	0
CATEGORIES =	graphics

# Perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

RUN_DEPENDS=	graphics/p5-GD-Graph>=1.30

MODULES=	cpan
USE_GROFF =	Yes

pre-patch:
	@perl -pi -e 's/\r//' ${WRKSRC}/lib/GD/Graph3d.pm

.include <bsd.port.mk>
