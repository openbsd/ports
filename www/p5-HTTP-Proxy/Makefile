# $OpenBSD: Makefile,v 1.8 2014/10/24 17:24:01 nigel Exp $

COMMENT=	pure Perl HTTP proxy

MODULES=	cpan
DISTNAME=	HTTP-Proxy-0.301
CATEGORIES=	www

MAINTAINER=	Sam Smith <s@msmith.net>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS =	www/p5-libwww
RUN_DEPENDS =	www/p5-libwww

MAKE_ENV +=	TEST_POD=Yes

.include <bsd.port.mk>
