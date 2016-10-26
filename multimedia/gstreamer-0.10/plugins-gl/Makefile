# $OpenBSD: Makefile,v 1.15 2016/10/26 12:35:08 ajacoutot Exp $

COMMENT=		OpenGL elements for GStreamer

V=			0.10.3
DISTNAME=		gst-plugins-gl-${V}
PKGNAME=		gstreamer-plugins-gl-${V}
REVISION=		2

SHARED_LIBS +=  gstgl-0.10           0.0      # 1.0

WANTLIB += GL GLEW GLU ICE SM X11 X11-xcb Xdamage Xext Xfixes
WANTLIB += Xi Xmu Xt Xxf86vm drm ffi glapi glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstbase-0.10 gstcontroller-0.10
WANTLIB += gstinterfaces-0.10 gstreamer-0.10 gstvideo-0.10 gthread-2.0
WANTLIB += jpeg lzma m orc-0.4 pcre png pthread xcb
WANTLIB += xcb-dri2 xcb-glx xml2 z expat

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-gl/}

LIB_DEPENDS=		${P}/plugins-base \
			graphics/glew

# requires x11/gtk+2
CONFIGURE_ARGS=		--disable-examples

post-install:
	rm ${PREFIX}/lib/gstreamer-${VERSION}/*.{a,la}

.include <bsd.port.mk>
