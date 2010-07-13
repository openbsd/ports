# $OpenBSD: Makefile,v 1.7 2010/07/13 19:46:13 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	perl interface to the cairo library

MODULES=	cpan
DISTNAME=	Cairo-1.061
REVISION=	0
CATEGORIES=	graphics devel
CPAN_AUTHOR=	TSCH

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xrender expat fontconfig freetype \
		pixman-1 m z glitz png pthread-stubs xcb

LIB_DEPENDS=	cairo.>=6::graphics/cairo
BUILD_DEPENDS=	::devel/p5-ExtUtils-Depends \
		::devel/p5-ExtUtils-PkgConfig

.include <bsd.port.mk>
