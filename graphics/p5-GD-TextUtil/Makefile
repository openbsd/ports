# $OpenBSD: Makefile,v 1.5 2001/01/22 01:35:15 avsm Exp $

DISTNAME=	GDTextUtil-0.80
PKGNAME=	p5-GD-TextUtil-0.80
CATEGORIES=	graphics perl5
NEED_VERSION=	1.330
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= GD

RUN_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/${ARCH}-openbsd/GD.pm::graphics/p5-GD

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
