# $OpenBSD: Makefile,v 1.16 2010/07/30 06:58:58 ajacoutot Exp $

COMMENT=	GNUstep gui backend

V=		0.18.0
DISTNAME=	gnustep-back-${V}
REVISION=	0

CATEGORIES=	devel

BACKENDV=	${V:C/([0-9])*[.]([0-9]*).*/\1\2/1}
SUBST_VARS=	BACKENDV

HOMEPAGE=	http://www.gnustep.org/

WANTLIB=	GL X11 Xt Xext Xmu c freetype m objc pthread z \
		pthread-stubs xcb

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=core/}

USE_X11=	Yes
MODULES=	x11/gnustep
LIB_DEPENDS=	gnustep-base.>=3::x11/gnustep/base \
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
ERRORS+=	choose one backend FLAVOR: cairo, libart or xlib
.endif
		
.include <bsd.port.mk>
