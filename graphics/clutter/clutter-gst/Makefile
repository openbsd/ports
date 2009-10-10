# $OpenBSD: Makefile,v 1.3 2009/10/10 23:21:11 landry Exp $

COMMENT=		clutter GStreamer integration library

DISTNAME=		clutter-gst-${MAJOR}.0
SHARED_LIBS +=  clutter-gst-0.10    0.0      # .1000.0

MASTER_SITES=		${MASTER_SITES_CLUTTER:=clutter-gst/${MAJOR}/}

MODULES=		devel/gettext

WANTLIB += GL X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes Xxf86vm drm
WANTLIB += Xrender cairo expat fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gstbase-0.10
WANTLIB += gstreamer-0.10 gthread-2.0 json-glib-1.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += xcb xml2 z

LIB_DEPENDS=		clutter-glx-1.0::graphics/clutter/core \
			gstaudio-0.10,gstinterfaces-0.10,gstvideo-0.10::multimedia/gstreamer-0.10/plugins-base

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-introspection=no

.include <bsd.port.mk>
