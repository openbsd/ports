#   $OpenBSD: Makefile,v 1.5 1999/01/14 01:39:29 angelos Exp $
#

DISTNAME=	Convert-UU-0.20
PKGNAME=	p5-Convert-UU-0.20
CATEGORIES=	converters perl5

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Convert

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
