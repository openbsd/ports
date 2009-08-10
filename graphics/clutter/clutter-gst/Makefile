# $OpenBSD: Makefile,v 1.2 2009/08/10 06:31:44 kili Exp $

COMMENT=		clutter GStreamer integration library

DISTNAME=		clutter-gst-${MAJOR}.0
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=  clutter-gst-0.8    0.0      # .800.0

MASTER_SITES=		${MASTER_SITES_CLUTTER:=clutter-gst/${MAJOR}/}

MODULES=		devel/gettext

WANTLIB += GL X11 Xau Xcomposite Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xrender cairo expat fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gstbase-0.10
WANTLIB += gstreamer-0.10 gthread-2.0 json-glib-1.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += xcb xml2 z

LIB_DEPENDS=		clutter-glx-0.8::graphics/clutter/core \
			gstaudio-0.10,gstinterfaces-0.10,gstvideo-0.10::multimedia/gstreamer-0.10/plugins-base

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
