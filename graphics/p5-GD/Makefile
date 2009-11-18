# $OpenBSD: Makefile,v 1.29 2009/11/18 13:07:22 stephan Exp $

SHARED_ONLY =	Yes

COMMENT =	module to interface with the GD graphics library

DISTNAME =	GD-2.44
CATEGORIES =	graphics

# Artistic License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	fontconfig freetype jpeg m png z

LIB_DEPENDS =	gd.>=20.28::graphics/gd

MODULES =	converters/libiconv

USE_X11 =	Yes

MODULES +=	cpan

# test10 fails during make test due to a bug, see
# http://rt.cpan.org/Public/Bug/Display.html?id=49053

.include <bsd.port.mk>
