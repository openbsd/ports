# $OpenBSD: Makefile,v 1.7 2008/06/23 11:00:18 ajacoutot Exp $

COMMENT=	GNUstep gui backend

DISTNAME=	gnustep-back-0.14.0
CATEGORIES=	devel

HOMEPAGE=	http://www.gnustep.org/

WANTLIB=	GL X11 Xt Xau Xdmcp Xext Xft Xmu Xrender c expat \
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
