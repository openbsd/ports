# $OpenBSD: Makefile,v 1.8 2008/09/05 18:29:43 ajacoutot Exp $

COMMENT=	GNUstep gui backend

DISTNAME=	gnustep-back-0.14.0
CATEGORIES=	devel

HOMEPAGE=	http://www.gnustep.org/

WANTLIB=	GL X11 Xt Xext Xmu c freetype m objc pthread z

MASTER_SITES=	ftp://ftp.gnustep.org/pub/gnustep/core/

USE_X11=	Yes
MODULES=	x11/gnustep
LIB_DEPENDS=	gnustep-base.>=1::x11/gnustep/base \
		gnustep-gui::x11/gnustep/gui

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -lm"
CONFIGURE_ARGS=	--with-x \
		--disable-glitz

FLAVORS=	cairo libart xlib
FLAVOR?=	xlib

.if ${FLAVOR:L} == "cairo"
CONFIGURE_ARGS+=--enable-graphics=cairo \
		--with-name=cairo
LIB_DEPENDS+=	cairo.>=8::graphics/cairo
WANTLIB+=	Xau Xdmcp Xft Xrender expat fontconfig glitz pixman-1 \
		png
.elif ${FLAVOR:L} == "libart"
CONFIGURE_ARGS+=--enable-graphics=art \
		--with-name=art
LIB_DEPENDS+=	art_lgpl_2.>=5::graphics/libart
.elif ${FLAVOR:L} == "xlib"
CONFIGURE_ARGS+=--enable-graphics=xlib \
		--with-name=back
WANTLIB+=	Xau Xdmcp Xft Xrender expat fontconfig
.else
BROKEN=		choose one backend FLAVOR: cairo, libart or xlib
.endif
		
.include <bsd.port.mk>
