# $OpenBSD: Makefile,v 1.38 2012/08/23 15:50:05 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	module to interface with the GD graphics library

DISTNAME =	GD-2.46
REVISION =	0
CATEGORIES =	graphics

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c fontconfig freetype jpeg m png z gd>=20.28

LIB_DEPENDS =	graphics/gd

MODULES =	converters/libiconv \
		cpan
MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	demos
USE_GROFF =	Yes

# test10 fails during make test due to a bug, see
# http://rt.cpan.org/Public/Bug/Display.html?id=49053

.include <bsd.port.mk>
