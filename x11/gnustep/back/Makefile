# $OpenBSD: Makefile,v 1.5 2007/12/10 16:24:19 ajacoutot Exp $

COMMENT=	GNUstep gui backend

DISTNAME=	gnustep-back-0.12.0
PKGNAME=	${DISTNAME}p1
CATEGORIES=	devel

HOMEPAGE=	http://www.gnustep.org/

WANTLIB=	GL X11 Xau Xdmcp Xext Xft Xmu Xrender c expat \
		fontconfig freetype m objc pthread z

MASTER_SITES=	ftp://ftp.gnustep.org/pub/gnustep/core/

USE_X11=	Yes
MODULES=	x11/gnustep
LIB_DEPENDS=	gnustep-base.>=1::x11/gnustep/base \
		gnustep-gui::x11/gnustep/gui

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -lm"
CONFIGURE_ARGS=	--with-x \
		--enable-graphics=xlib \
		--disable-glitz

.include <bsd.port.mk>
