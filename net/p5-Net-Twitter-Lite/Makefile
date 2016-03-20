# $OpenBSD: Makefile,v 1.3 2016/03/20 19:56:55 naddy Exp $

COMMENT =		interface to Twitter API

DISTNAME =		Net-Twitter-Lite-0.12006

CATEGORIES =		net devel

MAINTAINER =		Pascal Stumpf <Pascal.Stumpf@cubes.de>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
PKG_ARCH =		*
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/p5-Test-Fatal \
			net/p5-Net-OAuth \
			security/p5-Crypt-SSLeay \
			www/p5-libwww \
			converters/p5-JSON \
			www/p5-URI

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
