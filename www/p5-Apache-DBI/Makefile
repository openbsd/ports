# $OpenBSD: Makefile,v 1.7 2001/09/07 22:24:39 peter Exp $

COMMENT=	"DBI persistent connection, authentication and authorization"

VERSION=	0.88
DISTNAME=	ApacheDBI-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www databases perl5
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Apache

RUN_DEPENDS=	${LOCALBASE}/lib/mod_perl.so::www/mod_perl \
		${LOCALBASE}/libdata/perl5/site_perl/${MACHINE_ARCH}-openbsd/DBI.pm::databases/p5-DBI

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>
		
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
