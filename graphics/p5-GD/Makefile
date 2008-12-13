# $OpenBSD: Makefile,v 1.28 2008/12/13 22:52:55 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	module to interface with the GD graphics library

DISTNAME=	GD-2.41
CATEGORIES=	graphics

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	fontconfig freetype jpeg m png z

LIB_DEPENDS=	gd.>=20.28::graphics/gd

MODULES=	converters/libiconv

USE_X11=	Yes

MODULES+=	cpan

.include <bsd.port.mk>
