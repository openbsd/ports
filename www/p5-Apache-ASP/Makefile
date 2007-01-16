# $OpenBSD: Makefile,v 1.13 2007/01/16 17:52:06 simon Exp $

COMMENT=	"Apache ASP support"

MODULES=	cpan
DISTNAME=	Apache-ASP-2.59
CATEGORIES=	www

RUN_DEPENDS=	:p5-MLDBM-Sync->=0.25:devel/p5-MLDBM-Sync \
		::www/mod_perl
BUILD_DEPENDS=	:p5-MLDBM-Sync->=0.25:devel/p5-MLDBM-Sync

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
