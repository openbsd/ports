# $OpenBSD: Makefile,v 1.15 2008/10/05 22:31:59 jasper Exp $

COMMENT=	Apache ASP support

MODULES=	cpan
DISTNAME=	Apache-ASP-2.61
CATEGORIES=	www

RUN_DEPENDS=	:p5-MLDBM-Sync->=0.25:devel/p5-MLDBM-Sync \
		::www/mod_perl
BUILD_DEPENDS=	:p5-MLDBM-Sync->=0.25:devel/p5-MLDBM-Sync

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
