# $OpenBSD: Makefile,v 1.6 2012/01/31 09:24:23 ajacoutot Exp $

COMMENT=		modern 3D graphics API

GNOME_PROJECT=		cogl
GNOME_VERSION=		1.8.2

REVISION=		2

SHARED_LIBS+=		cogl-pango	0.0 # 0.0
SHARED_LIBS+=		cogl		0.0 # 5.0

WANTLIB += GL X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes Xrender
WANTLIB += Xxf86vm cairo drm expat ffi fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs stdc++ xcb xcb-render xcb-shm z

MODULES=		x11/gnome \
			devel/gettext

MODGNOME_TOOLS=		goi

LIB_DEPENDS=		devel/pango \
			graphics/gdk-pixbuf2

CONFIGURE_ARGS+=	--with-gl-libname=libGL.so

.include <bsd.port.mk>
