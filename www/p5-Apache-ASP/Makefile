# $OpenBSD: Makefile,v 1.4 2002/10/30 04:46:32 pvalchev Exp $

COMMENT=	"Apache ASP support"

VERSION=	2.31
DISTNAME=	Apache-ASP-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

BUILD_DEPENDS=	:p5-MLDBM-Sync->=0.25:devel/p5-MLDBM-Sync
RUN_DEPENDS=	$(BUILD_DEPENDS) \
		::www/mod_perl

MAINTAINER=	Peter Galbavy <peter.galbavy@knowtion.net>
		
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
