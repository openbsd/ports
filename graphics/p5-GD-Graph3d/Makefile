# $OpenBSD: Makefile,v 1.7 2002/05/13 23:31:24 espie Exp $

COMMENT=	"module for 3D graph plotting"

DISTNAME=	GDGraph3d-0.55
PKGNAME=	p5-GD-Graph3d-0.55
CATEGORIES=	graphics perl5
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GD/}

BUILD_DEPENDS=	::graphics/p5-GD-Graph
RUN_DEPENDS=	::graphics/p5-GD-Graph

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>

