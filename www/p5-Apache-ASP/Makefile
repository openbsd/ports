# $OpenBSD: Makefile,v 1.9 2004/06/26 07:35:10 xsa Exp $

COMMENT=	"Apache ASP support"

VERSION=	2.57
DISTNAME=	Apache-ASP-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

RUN_DEPENDS=	:p5-MLDBM-Sync->=0.25:devel/p5-MLDBM-Sync
		::www/mod_perl
BUILD_DEPENDS=	:p5-MLDBM-Sync->=0.25:devel/p5-MLDBM-Sync

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
