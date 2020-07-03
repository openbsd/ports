# $OpenBSD: Makefile,v 1.15 2020/07/03 21:45:23 sthen Exp $

COMMENT =	security image (captcha) generator

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	GD-SecurityImage-1.75
CATEGORIES =	graphics security
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		graphics/p5-GD

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	eg

.include <bsd.port.mk>
