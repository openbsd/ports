# $OpenBSD: Makefile,v 1.8 2001/11/13 22:13:25 espie Exp $

COMMENT=	"DBI persistent connection, authentication and authorization"

VERSION=	0.88
DISTNAME=	ApacheDBI-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www databases perl5
NEED_VERSION=	1.496
MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Apache

RUN_DEPENDS=	::www/mod_perl \
		::databases/p5-DBI

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>
		
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
