# $OpenBSD: Makefile,v 1.11 2016/03/20 19:57:22 naddy Exp $

COMMENT=		smart URI fetching/caching

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		URI-Fetch-0.11
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-URI \
		www/p5-libwww \
		devel/p5-Class-ErrorHandler

.include <bsd.port.mk>
