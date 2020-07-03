# $OpenBSD: Makefile,v 1.14 2020/07/03 21:46:06 sthen Exp $

COMMENT=		smart URI fetching/caching

MODULES=		cpan
PKG_ARCH=		*
DISTNAME =		URI-Fetch-0.13
CATEGORIES=		www
REVISION =		0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	www/p5-URI \
		www/p5-libwww \
		devel/p5-Class-ErrorHandler \
		devel/p5-Test-RequiresInternet

.include <bsd.port.mk>
