# $OpenBSD: Makefile,v 1.12 2017/05/02 07:10:53 benoit Exp $

COMMENT=		smart URI fetching/caching

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		URI-Fetch-0.13
CATEGORIES=		www

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	www/p5-URI \
		www/p5-libwww \
		devel/p5-Class-ErrorHandler \
		devel/p5-Test-RequiresInternet

.include <bsd.port.mk>
