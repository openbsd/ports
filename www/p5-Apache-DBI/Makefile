# $OpenBSD: Makefile,v 1.10 2002/06/10 03:14:35 wilfried Exp $

COMMENT=	"DBI persistent connection, authentication and authorization"

VERSION=	0.88
DISTNAME=	ApacheDBI-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www databases perl5
NEED_VERSION=	1.496
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

RUN_DEPENDS=	:mod_perl-*:www/mod_perl \
		:p5-DBI-*:databases/p5-DBI

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>
		
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
