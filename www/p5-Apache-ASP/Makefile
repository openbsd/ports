# $OpenBSD: Makefile,v 1.19 2013/03/11 11:44:43 espie Exp $

COMMENT=	Apache ASP support

MODULES=	cpan
DISTNAME=	Apache-ASP-2.61
REVISION=	0
CATEGORIES=	www
USE_GROFF =	Yes

RUN_DEPENDS=	devel/p5-MLDBM-Sync>=0.25 \
		www/mod_perl
BUILD_DEPENDS=	devel/p5-MLDBM-Sync>=0.25

# perl
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
