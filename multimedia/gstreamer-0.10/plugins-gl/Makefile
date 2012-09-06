# $OpenBSD: Makefile,v 1.9 2012/09/06 12:37:58 ajacoutot Exp $

COMMENT=		OpenGL elements for GStreamer

V=			0.10.2
DISTNAME=		gst-plugins-gl-${V}
PKGNAME=		gstreamer-plugins-gl-${V}
REVISION=		5

SHARED_LIBS +=  gstgl-0.10                0.0 # 1.0

WANTLIB += GL GLEW GLU ICE SM X11 Xdamage Xext Xfixes Xi Xmu Xt
WANTLIB += Xxf86vm drm ffi glib-2.0 gmodule-2.0 gobject-2.0 gstbase-0.10
WANTLIB += gstcontroller-0.10 gstinterfaces-0.10 gstreamer-0.10
WANTLIB += gstvideo-0.10 gthread-2.0 m orc-0.4 pcre png pthread
WANTLIB += stdc++ xcb xml2 z

MASTER_SITES=		${MASTER_SITE_GST:=gst-plugins-gl/}

LIB_DEPENDS=		${P}/plugins-base \
			graphics/glew

AUTOCONF_VERSION=	2.65
LDFLAGS +=		-lm -lGL

# requires x11/gtk+2
CONFIGURE_ARGS=		--disable-examples

.include <bsd.port.mk>
