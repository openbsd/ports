# $OpenBSD: Makefile,v 1.12 2014/09/01 10:15:31 ajacoutot Exp $

COMMENT=		OpenGL elements for GStreamer

V=			0.10.3
DISTNAME=		gst-plugins-gl-${V}
PKGNAME=		gstreamer-plugins-gl-${V}

SHARED_LIBS +=  gstgl-0.10           0.0      # 1.0

WANTLIB += GL GLEW GLU ICE SM X11 X11-xcb Xau Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xmu Xt Xxf86vm drm ffi glapi glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstbase-0.10 gstcontroller-0.10 gstinterfaces-0.10
WANTLIB += gstreamer-0.10 gstvideo-0.10 gthread-2.0 jpeg m orc-0.4
WANTLIB += pcre png pthread pthread-stubs stdc++ xcb xcb-dri2
WANTLIB += xcb-glx xml2 z

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-gl/}

LIB_DEPENDS=		${P}/plugins-base \
			graphics/glew

# requires x11/gtk+2
CONFIGURE_ARGS=		--disable-examples

post-install:
	rm ${PREFIX}/lib/gstreamer-${VERSION}/*.{a,la}

.include <bsd.port.mk>
