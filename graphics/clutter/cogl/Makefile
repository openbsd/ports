# $OpenBSD: Makefile,v 1.36 2016/09/08 08:49:10 jasper Exp $

COMMENT=		modern 3D graphics API

GNOME_PROJECT=		cogl
GNOME_VERSION=		1.22.2
REVISION=		0

SHARED_LIBS +=  cogl                 3.1      # 24.2
SHARED_LIBS +=	cogl-path            0.0      # 24.2
SHARED_LIBS +=  cogl-pango           3.0      # 24.2

WANTLIB += EGL X11 X11-xcb Xcomposite Xdamage Xext Xfixes Xrandr
WANTLIB += Xrender cairo drm expat ffi fontconfig freetype gbm
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 harfbuzz iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs xcb xcb-dri2 xcb-render xcb-shm xcb-xfixes
WANTLIB += z

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
