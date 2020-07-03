# $OpenBSD: Makefile,v 1.13 2020/07/03 21:46:03 sthen Exp $

COMMENT=	pure Perl HTTP proxy

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTTP-Proxy-0.304
CATEGORIES=	www
REVISION =	1

# Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS =	www/p5-libwww
RUN_DEPENDS =	www/p5-libwww

MAKE_ENV +=	TEST_POD=Yes

.include <bsd.port.mk>
