# $OpenBSD: Makefile,v 1.33 2015/09/19 11:06:30 jasper Exp $

COMMENT=		modern 3D graphics API

GNOME_PROJECT=		cogl
GNOME_VERSION=		1.22.0

SHARED_LIBS +=  cogl                 3.1      # 24.0
SHARED_LIBS +=	cogl-path            0.0      # 24.0
SHARED_LIBS +=  cogl-pango           3.0      # 24.0

WANTLIB += X11 Xcomposite Xdamage Xext Xfixes Xrandr Xrender cairo
WANTLIB += expat ffi fontconfig freetype gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z
WANTLIB += EGL X11-xcb Xau Xdmcp drm gbm glapi xcb-dri2 xcb-shape
WANTLIB += xcb-xfixes

MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS=		devel/pango \
			graphics/gdk-pixbuf2

CONFIGURE_ARGS=		--with-gl-libname=libGL.so \
			--with-gles1-libname=libGLESv1_CM \
			--with-gles2-libname=libGLESv2 \
			--enable-kms-egl-platform=yes \
			--enable-xlib-egl-platform=yes

TEST_DEPENDS=		shells/bash
TEST_IS_INTERACTIVE=	x11

# https://bugzilla.gnome.org/show_bug.cgi?id=726910
pre-configure:
	perl -pi -e 's,/bin/bash,${LOCALBASE}/bin/bash,' \
		${WRKSRC}/tests/run-tests.sh

.include <bsd.port.mk>
