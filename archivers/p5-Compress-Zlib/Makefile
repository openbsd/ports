# $OpenBSD: Makefile,v 1.4 1999/01/14 01:23:54 angelos Exp $
#

DISTNAME=	Compress-Zlib-1.01
PKGNAME=	p5-Compress-Zlib-1.01
CATEGORIES=	archivers perl5

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Compress


do-configure:
	@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
