# $OpenBSD: Makefile,v 1.17 2010/11/22 08:36:49 espie Exp $

COMMENT=	Apache ASP support

MODULES=	cpan
DISTNAME=	Apache-ASP-2.61
CATEGORIES=	www
USE_GROFF =	Yes

RUN_DEPENDS=	devel/p5-MLDBM-Sync>=0.25 \
		www/mod_perl
BUILD_DEPENDS=	devel/p5-MLDBM-Sync>=0.25

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
