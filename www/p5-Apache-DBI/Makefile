# $OpenBSD: Makefile,v 1.3 2001/04/23 12:40:15 peter Exp $

COMMENT=	"DBI persistent connection, authentication and authorization"

DISTNAME=	ApacheDBI-0.87
PKGNAME=	p5-Apache-DBI-0.87
CATEGORIES=	www databases perl5
NEED_VERSION=	1.405
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Apache

RUN_DEPENDS=	${LOCALBASE}/lib/mod_perl.so::www/mod_perl \
		${LOCALBASE}/libdata/perl5/site_perl/${ARCH}-openbsd/DBI.pm::databases/p5-DBI

MAINTAINER=	Peter Galbavy <peter.galbavy@knowledge.com>
		
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
