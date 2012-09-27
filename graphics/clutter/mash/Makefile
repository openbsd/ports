# $OpenBSD: Makefile,v 1.2 2012/09/27 13:00:40 jasper Exp $

COMMENT=	library for using real 3D models within a Clutter scene

V=		0.2.0
DISTNAME=	mash-${V}
EXTRACT_SUFX=	.tar.xz
REVISION=	0

SHARED_LIBS +=  mash-0.2                  0.0 # 0.0

MASTER_SITES=	http://source.clutter-project.org/sources/mash/${V:C/^([0-9]+\.[0-9]+).*/\1/}/

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += clutter-1.0 cogl cogl-pango drm expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs stdc++
WANTLIB += xcb xcb-render xcb-shm z

MODGNOME_TOOLS=		goi

LIB_DEPENDS= 		graphics/clutter/core

.include <bsd.port.mk>
