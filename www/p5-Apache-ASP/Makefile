# $OpenBSD: Makefile,v 1.6 2003/02/12 01:00:45 naddy Exp $

COMMENT=	"Apache ASP support"

VERSION=	2.51
DISTNAME=	Apache-ASP-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

BUILD_DEPENDS=	:p5-MLDBM-Sync->=0.25:devel/p5-MLDBM-Sync
RUN_DEPENDS=	${BUILD_DEPENDS} \
		::www/mod_perl

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>
		
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
