# OpenBSD makefile for:	p5-Compress-Zlib
# Version required:			0.50
# Date created:				24 November 1887
# Whom:	      				angelos
#
# $OpenBSD: Makefile,v 1.1 1997/11/24 21:09:15 angelos Exp $
#

DISTNAME=	Compress-Zlib-0.50
PKGNAME=	p5-Compress-Zlib-0.50
CATEGORIES=	archivers perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Compress

MAINTAINER=	angelos@openbsd.org

USE_PERL5=	YES

MAN3=		Compress::Zlib.3
MANPREFIX=	${PREFIX}/lib/perl5

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
