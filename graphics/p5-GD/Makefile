# $OpenBSD: Makefile,v 1.40 2014/03/17 09:59:00 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	module to interface with the GD graphics library

DISTNAME =	GD-2.52
CATEGORIES =	graphics

# perl
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c fontconfig freetype jpeg m png z gd>=20.28

LIB_DEPENDS =	graphics/gd

MODULES =	converters/libiconv \
		cpan

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	demos

# test10 fails during make test due to a bug, see
# http://rt.cpan.org/Public/Bug/Display.html?id=49053

.include <bsd.port.mk>
