# $OpenBSD: Makefile,v 1.10 2016/03/20 19:57:20 naddy Exp $

COMMENT=	pure Perl HTTP proxy

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTTP-Proxy-0.304
CATEGORIES=	www

MAINTAINER=	Sam Smith <s@msmith.net>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS =	www/p5-libwww
RUN_DEPENDS =	www/p5-libwww

MAKE_ENV +=	TEST_POD=Yes

.include <bsd.port.mk>
