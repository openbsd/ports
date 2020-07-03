# $OpenBSD: Makefile,v 1.7 2020/07/03 21:45:36 sthen Exp $

COMMENT =		interface to Twitter API

DISTNAME =		Net-Twitter-Lite-0.12008
REVISION =		0

CATEGORIES =		net devel

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Test-Fatal \
			net/p5-Net-OAuth \
			www/p5-LWP-Protocol-https \
			www/p5-libwww \
			converters/p5-JSON \
			www/p5-URI

CONFIGURE_STYLE =	modbuild tiny

.include <bsd.port.mk>
