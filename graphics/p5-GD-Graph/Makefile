# $OpenBSD: Makefile,v 1.8 2001/11/13 22:13:23 espie Exp $

COMMENT=	"module for graph plotting"

DISTNAME=	GDGraph-1.33
PKGNAME=	p5-GD-Graph-1.33
CATEGORIES=	graphics perl5
NEED_VERSION=	1.496
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= GD

RUN_DEPENDS=	::graphics/p5-GD \
		::graphics/p5-GD-TextUtil

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
