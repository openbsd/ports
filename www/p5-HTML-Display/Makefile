# $OpenBSD: Makefile,v 1.3 2017/08/15 14:44:25 afresh1 Exp $

COMMENT =		display HTML locally in a browser

DISTNAME =		HTML-Display-0.40

CATEGORIES =		www

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
RUN_DEPENDS =		www/p5-URI \
			www/p5-HTML-Parser \
			www/p5-HTML-TokeParser-Simple>=2 \
			www/p5-libwww>=5.69
TEST_DEPENDS =		www/p5-HTTP-Daemon \
			devel/p5-Test-Pod>=0.95

.include <bsd.port.mk>
