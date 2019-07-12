# $OpenBSD: Makefile,v 1.12 2019/07/12 20:50:55 sthen Exp $

COMMENT=	pure Perl HTTP proxy

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTTP-Proxy-0.304
CATEGORIES=	www
REVISION =	0

# Perl
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS =	www/p5-libwww
RUN_DEPENDS =	www/p5-libwww

MAKE_ENV +=	TEST_POD=Yes

.include <bsd.port.mk>
