# $OpenBSD: Makefile,v 1.1.1.1 2007/05/19 14:24:01 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"perl interface to the cairo library"

MODULES=	cpan
DISTNAME=	Cairo-1.040
CATEGORIES=	graphics devel
CPAN_AUTHOR=	TSCH

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xrender expat fontconfig freetype m z glitz png

LIB_DEPENDS=	cairo.>=6::graphics/cairo
BUILD_DEPENDS=	::devel/p5-ExtUtils-Depends \
		::devel/p5-ExtUtils-PkgConfig

.include <bsd.port.mk>
