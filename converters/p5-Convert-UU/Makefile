# $OpenBSD: Makefile,v 1.6 1999/04/01 06:20:04 brad Exp $

DISTNAME=	Convert-UU-0.20
PKGNAME=	p5-Convert-UU-0.20
CATEGORIES=	converters perl5

MAINTAINER=	angelos@openbsd.org

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Convert

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
