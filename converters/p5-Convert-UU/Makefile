#   $OpenBSD: Makefile,v 1.2 1998/10/08 03:50:42 marc Exp $
#

DISTNAME=	Convert-UU-0.04
PKGNAME=	p5-Convert-UU-0.04
CATEGORIES=	converters perl5

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Convert

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
