# $OpenBSD: Makefile,v 1.9 1999/11/08 06:50:41 kevlo Exp $

DISTNAME=       MIME-Base64-2.11
PKGNAME=        MIME-Base64-2.11
CATEGORIES=	converters perl5

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=     MIME

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
