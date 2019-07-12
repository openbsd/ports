# $OpenBSD: Makefile,v 1.14 2019/07/12 20:47:06 sthen Exp $

COMMENT =	security image (captcha) generator

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	GD-SecurityImage-1.75
CATEGORIES =	graphics security

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		graphics/p5-GD

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	eg

.include <bsd.port.mk>
