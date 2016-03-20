# $OpenBSD: Makefile,v 1.12 2016/03/20 19:56:43 naddy Exp $

COMMENT =	security image (captcha) generator

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	GD-SecurityImage-1.73
CATEGORIES =	graphics security

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		graphics/p5-GD

CONFIGURE_STYLE =	modbuild

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	eg

.include <bsd.port.mk>
