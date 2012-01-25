# $OpenBSD: Makefile,v 1.8 2012/01/25 14:06:43 ajacoutot Exp $

COMMENT =		OpenGL elements for GStreamer

V =			0.10.2
DISTNAME =		gst-plugins-gl-${V}

REVISION =		4

PKGNAME =		gstreamer-plugins-gl-${V}

SHARED_LIBS +=  gstgl-0.10                0.0 # 1.0

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-gl/}
MODULES =		devel/gettext

WANTLIB += GL GLEW GLU ICE SM X11 Xdamage Xext Xfixes Xi Xmu Xt
WANTLIB += Xxf86vm drm ffi glib-2.0 gmodule-2.0 gobject-2.0 gstbase-0.10
WANTLIB += gstcontroller-0.10 gstinterfaces-0.10 gstreamer-0.10
WANTLIB += gstvideo-0.10 gthread-2.0 m pcre png stdc++ xcb xml2
WANTLIB += z

LIB_DEPENDS =		${P}/plugins-base \
			graphics/glew

LDFLAGS +=		-lm -lGL

AUTOCONF_VERSION =	2.65

CONFIGURE_ENV +=	ac_cv_path_PYTHON=""

# requires x11/gtk+2
CONFIGURE_ARGS =	--disable-examples

.include <bsd.port.mk>
