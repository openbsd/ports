# $OpenBSD: Makefile,v 1.21 2015/09/19 22:49:59 ajacoutot Exp $

COMMENT=	Apache ASP support

MODULES=	cpan
DISTNAME=	Apache-ASP-2.62
CATEGORIES=	www

RUN_DEPENDS=	devel/p5-MLDBM-Sync>=0.25 \
		www/mod_perl
BUILD_DEPENDS=	devel/p5-MLDBM-Sync>=0.25

# perl
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
