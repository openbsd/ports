# $OpenBSD: Makefile,v 1.22 2016/03/20 19:57:13 naddy Exp $

COMMENT=	Apache ASP support

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Apache-ASP-2.62
CATEGORIES=	www

RUN_DEPENDS=	devel/p5-MLDBM-Sync>=0.25 \
		www/mod_perl
BUILD_DEPENDS=	devel/p5-MLDBM-Sync>=0.25

# perl
PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
