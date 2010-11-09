# $OpenBSD: Makefile,v 1.33 2010/11/09 18:22:26 espie Exp $

SHARED_ONLY =	Yes

COMMENT =	module to interface with the GD graphics library

DISTNAME =	GD-2.44
REVISION=	0
CATEGORIES =	graphics

# Artistic License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	fontconfig freetype jpeg m png z gd.>=20.28

LIB_DEPENDS =	::graphics/gd

MODULES =	converters/libiconv

USE_GROFF =	Yes

MODULES +=	cpan

# test10 fails during make test due to a bug, see
# http://rt.cpan.org/Public/Bug/Display.html?id=49053

.include <bsd.port.mk>
