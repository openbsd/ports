# $OpenBSD: Makefile,v 1.14 2004/04/20 18:11:12 robert Exp $

COMMENT=	"DBI persistent connection, authentication and authorization"

VERSION=	0.94
DISTNAME=	Apache-DBI-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www databases perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

RUN_DEPENDS=	:mod_perl-*:www/mod_perl \
		:p5-DBI-*:databases/p5-DBI

MAINTAINER=	Ben Lovett <ben@tilderoot.com>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
