# $OpenBSD: Makefile,v 1.3 2000/09/19 18:53:45 brad Exp $

DISTNAME=	GDGraph-1.32
PKGNAME=	p5-GD-Graph-1.32
CATEGORIES=	graphics perl5
NEED_VERSION=	1.330
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= GD

RUN_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/${ARCH}-openbsd/GD.pm::graphics/p5-GD \
		${LOCALBASE}/libdata/perl5/site_perl/GD/Text.pm::graphics/p5-GD-TextUtil

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
