# $OpenBSD: Makefile,v 1.35 2010/12/03 11:45:37 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	module to interface with the GD graphics library

DISTNAME =	GD-2.44
REVISION=	1
CATEGORIES =	graphics

# Artistic License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	fontconfig freetype jpeg m png z gd>=20.28

LIB_DEPENDS =	graphics/gd

MODULES =	converters/libiconv

USE_GROFF =	Yes

MODULES +=	cpan

# test10 fails during make test due to a bug, see
# http://rt.cpan.org/Public/Bug/Display.html?id=49053

.include <bsd.port.mk>
