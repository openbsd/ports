#   $OpenBSD: Makefile,v 1.4 1999/01/14 01:39:01 angelos Exp $
#

DISTNAME=       MIME-Base64-2.10
PKGNAME=        p5-MIME-Base64-2.10
CATEGORIES=	converters perl5

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=     MIME

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
