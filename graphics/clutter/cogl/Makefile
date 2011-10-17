# $OpenBSD: Makefile,v 1.3 2011/10/17 15:49:44 jasper Exp $

COMMENT=		modern 3D graphics API

MAJOR=			1.8

DISTNAME=		cogl-${MAJOR}.2

SHARED_LIBS+=		cogl-pango	0.0 # 0.0
SHARED_LIBS+=		cogl		0.0 # 5.0

MODULES=		x11/gnome \
			devel/gettext

EXTRACT_SUFX=		.tar.xz
MASTER_SITES?=		${MASTER_SITE_GNOME:=sources/cogl/${MAJOR}/}

WANTLIB += GL X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes Xrender
WANTLIB += Xxf86vm cairo drm expat ffi fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs xcb xcb-render xcb-shm z stdc++

MODGNOME_TOOLS=		goi

LIB_DEPENDS=		devel/pango \
			graphics/gdk-pixbuf2

CONFIGURE_ARGS+=	--with-gl-libname=libGL.so

.include <bsd.port.mk>
