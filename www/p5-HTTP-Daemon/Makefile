# $OpenBSD: Makefile,v 1.7 2022/02/16 20:21:06 bluhm Exp $

COMMENT =	simple http server class

DISTNAME =	HTTP-Daemon-6.13

CATEGORIES =	www

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
RUN_DEPENDS =		www/p5-HTTP-Date>=6 \
			www/p5-HTTP-Message>=6 \
			www/p5-LWP-MediaTypes>=6
TEST_DEPENDS =		devel/p5-Test-Needs \
			www/p5-libwww \
			www/p5-URI

CONFIGURE_STYLE =	modbuild tiny

PKG_ARCH =		*

.include <bsd.port.mk>
