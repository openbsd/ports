# $OpenBSD: Makefile,v 1.7 2001/05/10 19:20:48 naddy Exp $

COMMENT=	"text utilities for use with GD drawing package"

DISTNAME=	GDTextUtil-0.80
PKGNAME=	p5-GD-TextUtil-0.80
CATEGORIES=	graphics perl5
NEED_VERSION=	1.407
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= GD

RUN_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd/GD.pm::graphics/p5-GD

MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
