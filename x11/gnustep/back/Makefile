# $OpenBSD: Makefile,v 1.19 2010/10/19 08:13:57 espie Exp $

COMMENT=	GNUstep gui backend

V=		0.18.0
DISTNAME=	gnustep-back-${V}
REVISION=	2

CATEGORIES=	devel

BACKENDV=	${V:C/([0-9])*[.]([0-9]*).*/\1\2/1}
SUBST_VARS=	BACKENDV

HOMEPAGE=	http://www.gnustep.org/

WANTLIB=	GL X11 Xt Xext Xmu c freetype m objc pthread z \
		pthread-stubs xcb gnustep-base gnustep-gui

MASTER_SITES=	${MASTER_SITE_GNUSTEP:=core/}

USE_X11=	Yes
USE_GROFF =	Yes
MODULES=	x11/gnustep
LIB_DEPENDS=	::x11/gnustep/base \
		::x11/gnustep/gui

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -lm"
CONFIGURE_ARGS=	--with-x \
		--disable-glitz

FLAVORS=	cairo libart xlib
FLAVOR?=	xlib

.if ${FLAVOR:L} == "cairo"
CONFIGURE_ARGS+=--enable-graphics=cairo \
		--with-name=cairo
LIB_DEPENDS+=	::graphics/cairo
WANTLIB+=	Xau Xdmcp Xft Xrender expat fontconfig pixman-1 \
		png cairo
.elif ${FLAVOR:L} == "libart"
CONFIGURE_ARGS+=--enable-graphics=art \
		--with-name=art
LIB_DEPENDS+=	::graphics/libart
WANTLIB += art_lgpl_2
.elif ${FLAVOR:L} == "xlib"
CONFIGURE_ARGS+=--enable-graphics=xlib \
		--with-name=back
WANTLIB+=	Xau Xdmcp Xft Xrender expat fontconfig
.else
ERRORS+=	choose one backend FLAVOR: cairo, libart or xlib
.endif
		
.include <bsd.port.mk>
