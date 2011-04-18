# $OpenBSD: Makefile,v 1.25 2011/04/18 11:56:41 sebastia Exp $

COMMENT=	GNUstep gui backend

V =		0.20.0
DISTNAME=	gnustep-back-${V}

CATEGORIES=	devel

HOMEPAGE=	http://www.gnustep.org/
MASTER_SITES=	${MASTER_SITE_GNUSTEP:=core/}

MODULES=	devel/gettext x11/gnustep
MODGNUSTEP_NEEDS_BACK=	No

WANTLIB+= 	Xau Xdmcp Xft Xrender expat fontconfig pixman-1
WANTLIB+= 	png cairo pthread-stubs xcb xcb-render xcb-shm
WANTLIB+= 	Xdamage Xfixes Xxf86vm drm glib-2.0 gobject-2.0
WANTLIB+= 	gthread-2.0 intl freetype z
WANTLIB+=	GL X11 Xext Xmu Xt c m pthread
LIB_DEPENDS=	graphics/cairo

BACKENDV=	${V:C/([0-9])*[.]([0-9]*).*/\1\2/1}
SUBST_VARS=	BACKENDV

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib -lm"
CONFIGURE_ARGS=	--with-x \
		--disable-glitz \
		--enable-graphics=cairo

.include <bsd.port.mk>
