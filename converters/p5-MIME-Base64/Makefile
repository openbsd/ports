# $OpenBSD: Makefile,v 1.6 1999/04/01 06:20:05 brad Exp $

DISTNAME=       MIME-Base64-2.10
PKGNAME=        p5-MIME-Base64-2.10
CATEGORIES=	converters perl5

#BROKEN=	versiopn 2.11 is the only version on the CPAN sites

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=     MIME

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
