# $OpenBSD: Makefile,v 1.43 2010/04/24 20:18:39 naddy Exp $

COMMENT=		simple paint program

DISTNAME=		xpaint-2.7.8.1
PKGNAME=		${DISTNAME}p2
CATEGORIES=		graphics x11

HOMEPAGE=		http://sf-xpaint.sourceforge.net/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sf-xpaint/}
EXTRACT_SUFX=		.tar.bz2

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c m \
			pthread-stubs xcb z

FAKE=			lib
LIB_DEPENDS=		jpeg.>=62::graphics/jpeg \
			tiff.>=36::graphics/tiff \
			png.>=4::graphics/png

CONFIGURE_STYLE= 	imake
ALL_TARGET=		xaw
USE_X11=		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
