# $OpenBSD: Makefile,v 1.6 1999/09/23 21:52:29 brad Exp $

DISTNAME=	Compress-Zlib-1.01
PKGNAME=	p5-Compress-Zlib-1.01
CATEGORIES=	archivers perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Compress

MAINTAINER=	angelos@openbsd.org

do-configure:
	@cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
