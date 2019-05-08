# $OpenBSD: Makefile,v 1.11 2019/05/08 15:44:46 danj Exp $

COMMENT=	pure Perl HTTP proxy

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	HTTP-Proxy-0.304
CATEGORIES=	www
REVISION =	0

# Perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS =	www/p5-libwww
RUN_DEPENDS =	www/p5-libwww

MAKE_ENV +=	TEST_POD=Yes

.include <bsd.port.mk>
