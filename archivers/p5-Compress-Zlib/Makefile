# $OpenBSD: Makefile,v 1.3 1998/10/18 05:01:59 marc Exp $
#

DISTNAME=	Compress-Zlib-0.50
PKGNAME=	p5-Compress-Zlib-0.50
CATEGORIES=	archivers perl5

#BROKEN=		"current version is 1.01"

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Compress


do-configure:
	@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
