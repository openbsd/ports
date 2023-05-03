COMMENT =	handy web browsing in a Perl object

DISTNAME =	WWW-Mechanize-2.17

CATEGORIES =	www

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		www/p5-HTML-Form>=6.08 \
			www/p5-HTML-Parser \
			www/p5-HTML-Tree>=5 \
			www/p5-HTTP-Cookies \
			www/p5-HTTP-Message>=1.30 \
			www/p5-URI \
			www/p5-libwww
TEST_DEPENDS =		devel/p5-Path-Tiny \
			devel/p5-Test-Deep \
			devel/p5-Test-Fatal \
			devel/p5-Test-Memory-Cycle \
			devel/p5-Test-Output \
			devel/p5-Test-Taint>=1.08 \
			devel/p5-Test-Warnings \
			www/p5-HTTP-Daemon>=6.12

PKG_ARCH =		*

.include <bsd.port.mk>
