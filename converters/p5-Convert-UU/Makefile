# $OpenBSD: Makefile,v 1.9 1999/11/05 12:01:34 kevlo Exp $

DISTNAME=	Convert-UU-0.40
PKGNAME=	Convert-UU-0.40
CATEGORIES=	converters perl5

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Convert

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} \
		/usr/bin/perl Makefile.PL PREFIX=${PREFIX} 

.include <bsd.port.mk>
