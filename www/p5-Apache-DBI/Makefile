# $OpenBSD: Makefile,v 1.1.1.1 2000/09/06 08:02:49 brad Exp $

DISTNAME=	ApacheDBI-0.87
PKGNAME=	p5-Apache-DBI-0.87
CATEGORIES=	www databases perl5
NEED_VERSION=	1.324
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Apache

RUN_DEPENDS=	${LOCALBASE}/lib/mod_perl.so::www/mod_perl \
		${LOCALBASE}/libdata/perl5/site_perl/${ARCH}-openbsd/DBI.pm::databases/p5-DBI

MAINTAINER=	pvk@openbsd.ru
		
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
