# $OpenBSD: Makefile,v 1.5 2020/07/03 21:46:00 sthen Exp $

COMMENT =		display HTML locally in a browser

DISTNAME =		HTML-Display-0.40
REVISION =		0

CATEGORIES =		www

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
RUN_DEPENDS =		www/p5-URI \
			www/p5-HTML-Parser \
			www/p5-HTML-TokeParser-Simple>=2 \
			www/p5-libwww>=5.69
TEST_DEPENDS =		www/p5-HTTP-Daemon \
			devel/p5-Test-Pod>=0.95

.include <bsd.port.mk>
