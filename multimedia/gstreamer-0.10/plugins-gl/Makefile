# $OpenBSD: Makefile,v 1.11 2014/04/01 16:31:40 ajacoutot Exp $

COMMENT=		OpenGL elements for GStreamer

V=			0.10.2
DISTNAME=		gst-plugins-gl-${V}
PKGNAME=		gstreamer-plugins-gl-${V}
REVISION=		7

SHARED_LIBS +=  gstgl-0.10                0.0 # 1.0

WANTLIB += GL GLEW GLU ICE SM X11 X11-xcb Xau Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xmu Xt Xxf86vm drm ffi glapi glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gstbase-0.10 gstcontroller-0.10 gstinterfaces-0.10
WANTLIB += gstreamer-0.10 gstvideo-0.10 gthread-2.0 m orc-0.4
WANTLIB += pcre png pthread pthread-stubs stdc++ xcb xcb-dri2
WANTLIB += xcb-glx xml2 z

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-gl/}

LIB_DEPENDS=		${P}/plugins-base \
			graphics/glew

AUTOCONF_VERSION=	2.65
LDFLAGS +=		-lm -lGL

# requires x11/gtk+2
CONFIGURE_ARGS=		--disable-examples

post-install:
	rm ${PREFIX}/lib/gstreamer-${VERSION}/*.{a,la}

.include <bsd.port.mk>
