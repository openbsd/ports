# $OpenBSD: Makefile,v 1.1.1.1 2000/03/01 01:03:24 angelos Exp $

DISTNAME=       MPEG-MP3Info-0.71
PKGNAME=        MPEG-MP3Info-0.71
CATEGORIES=	audio perl5

MAINTAINER=	angelos@openbsd.org
MASTER_SITES=	http://www.perl.com/CPAN-local/authors/id/CNANDOR/

LICENSE_TYPE=	PERL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

do-configure:
		@ cd ${WRKSRC}; ${SETENV} ${MAKE_ENV} /usr/bin/perl Makefile.PL

.include <bsd.port.mk>
