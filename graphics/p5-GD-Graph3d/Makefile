# $OpenBSD: Makefile,v 1.4 2001/05/06 05:05:49 lebel Exp $

COMMENT=	"module for 3D graph plotting"

DISTNAME=	GDGraph3d-0.55
PKGNAME=	p5-GD-Graph3d-0.55
CATEGORIES=	graphics perl5
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= GD

BUILD_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/GD/Graph.pm::graphics/p5-GD-Graph
RUN_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/GD/Graph.pm::graphics/p5-GD-Graph

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>

