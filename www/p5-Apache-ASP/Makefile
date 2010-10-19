# $OpenBSD: Makefile,v 1.16 2010/10/19 08:02:54 espie Exp $

COMMENT=	Apache ASP support

MODULES=	cpan
DISTNAME=	Apache-ASP-2.61
CATEGORIES=	www
USE_GROFF =	Yes

RUN_DEPENDS=	:p5-MLDBM-Sync->=0.25:devel/p5-MLDBM-Sync \
		::www/mod_perl
BUILD_DEPENDS=	:p5-MLDBM-Sync->=0.25:devel/p5-MLDBM-Sync

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
