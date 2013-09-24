# $OpenBSD: Makefile,v 1.6 2013/09/24 10:35:07 ajacoutot Exp $

COMMENT=	library for using real 3D models within a Clutter scene

V=		0.2.0
DISTNAME=	mash-${V}
EXTRACT_SUFX=	.tar.xz
REVISION=	1

SHARED_LIBS +=  mash-0.2                  0.0 # 0.0

HOMEPAGE=	http://clutter-project.github.io/mash/

MASTER_SITES=	http://cloud.github.com/downloads/clutter-project/mash/

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += clutter-1.0 cogl cogl-pango drm expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs stdc++
WANTLIB += xcb xcb-render xcb-shm z

MODGNOME_TOOLS=		gi

LIB_DEPENDS= 		graphics/clutter/core

.include <bsd.port.mk>
