# $OpenBSD: Makefile,v 1.24 2006/12/06 21:54:08 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	"module to interface with the GD graphics library"

DISTNAME=	GD-2.30
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	graphics

HOMEPAGE=	http://stein.cshl.org/WWW/software/GD
MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

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
