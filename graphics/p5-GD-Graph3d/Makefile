# $OpenBSD: Makefile,v 1.1.1.1 2000/09/19 22:12:43 mickey Exp $

DISTNAME=	GDGraph3d-0.54
PKGNAME=	p5-GD-Graph3d-0.54
CATEGORIES=	graphics perl5
NEED_VERSION=	1.330
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= GD

BUILD_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/GD/Graph.pm::graphics/p5-GD-Graph
RUN_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/GD/Graph.pm::graphics/p5-GD-Graph

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>

