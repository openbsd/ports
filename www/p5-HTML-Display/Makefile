# $OpenBSD: Makefile,v 1.1.1.1 2015/07/03 09:16:26 bluhm Exp $

COMMENT =		display HTML locally in a browser

DISTNAME =		HTML-Display-0.40

CATEGORIES =		www

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		www/p5-URI \
			www/p5-HTML-Parser \
			www/p5-HTML-TokeParser-Simple>=2 \
			www/p5-libwww>=5.69
TEST_DEPENDS =		www/p5-HTTP-Daemon \
			devel/p5-Test-Harness>=2.30 \
			devel/p5-Test-Pod>=0.95

.include <bsd.port.mk>
