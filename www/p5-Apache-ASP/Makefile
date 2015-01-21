# $OpenBSD: Makefile,v 1.20 2015/01/21 14:42:32 sthen Exp $

COMMENT=	Apache ASP support

MODULES=	cpan
DISTNAME=	Apache-ASP-2.61
REVISION=	0
CATEGORIES=	www

RUN_DEPENDS=	devel/p5-MLDBM-Sync>=0.25 \
		www/mod_perl
BUILD_DEPENDS=	devel/p5-MLDBM-Sync>=0.25

# perl
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
