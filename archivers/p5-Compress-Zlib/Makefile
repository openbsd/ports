# $OpenBSD: Makefile,v 1.8 2000/03/19 19:18:38 turan Exp $

DISTNAME=	Compress-Zlib-1.01
PKGNAME=	p5-Cmprs-Zlib-1.01
CATEGORIES=	archivers perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Compress

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=   ARTISTIC
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

do-configure:
	@cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
