# $OpenBSD: Makefile,v 1.2 2000/03/01 03:17:08 angelos Exp $

DISTNAME=       CDDB-1.02
PKGNAME=        CDDB-1.02
CATEGORIES=	audio perl5

MAINTAINER=	angelos@openbsd.org
MASTER_SITES=	http://www.perl.com/CPAN-local/authors/id/R/RC/RCAPUTO/

LICENSE_TYPE=	ARTISTIC
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
