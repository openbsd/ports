#	$OpenBSD: Makefile,v 1.2 2000/09/19 17:24:52 mickey Exp $

DISTNAME=	GDTextUtil-0.80
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5
NEED_VERSION=	1.330
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	GD

MAINTAINER=	ports@openbsd.org

RUN_DEPENDS=	${LOCALBASE}/libdata/perl5/site_perl/${ARCH}-openbsd/auto/GD/GD.so::graphics/p5-GD

CONFIGURE_STYLE=	perl

.include <bsd.port.mk>
