# $OpenBSD: Makefile,v 1.1.1.1 2010/09/08 21:45:59 ajacoutot Exp $

COMMENT =		OpenGL elements for GStreamer

V =			0.10.2
DISTNAME =		gst-plugins-gl-${V}

PKGNAME =		gstreamer-plugins-gl-${V}

SHARED_LIBS +=  gstgl-0.10                0.0 # 1.0

MASTER_SITES =		${MASTER_SITE_GST:=gst-plugins-gl/}
MODULES =		devel/gettext

WANTLIB += GL GLU ICE SM X11 Xau Xdmcp m pthread-stubs xcb z GLEW
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gstbase-0.10
WANTLIB += gstcontroller-0.10 gstinterfaces-0.10 gstreamer-0.10
WANTLIB += gstvideo-0.10 gthread-2.0 pcre png xml2

LIB_DEPENDS =		::${P}/plugins-base \
			::graphics/glew

LDFLAGS +=		-lm -lGL

CONFIGURE_ENV +=	ac_cv_path_PYTHON=""

.include <bsd.port.mk>
