# $OpenBSD: Makefile,v 1.40 2019/04/26 09:27:10 jasper Exp $

COMMENT=		modern 3D graphics API

GNOME_PROJECT=		cogl
GNOME_VERSION=		1.22.4

SHARED_LIBS +=  cogl                 3.2      # 24.2
SHARED_LIBS +=	cogl-path            0.1      # 24.2
SHARED_LIBS +=  cogl-pango           3.1      # 24.2

WANTLIB += EGL X11 X11-xcb Xcomposite Xdamage Xext Xfixes Xrandr
WANTLIB += Xrender cairo drm expat ffi fontconfig freetype gbm
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 harfbuzz iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 pthread
WANTLIB += xcb xcb-dri2 xcb-render xcb-shm xcb-xfixes xshmfence
WANTLIB += z fribidi glapi png16 xcb-dri3 xcb-present xcb-sync

MODGNOME_TOOLS +=	gobject-introspection

LIB_DEPENDS=		devel/pango \
			graphics/gdk-pixbuf2

CONFIGURE_ARGS=		--with-gl-libname=libGL.so \
			--with-gles1-libname=libGLESv1_CM \
			--with-gles2-libname=libGLESv2 \
			--enable-kms-egl-platform=yes \
			--enable-xlib-egl-platform=yes \
			--disable-maintainer-flags

TEST_DEPENDS=		shells/bash
TEST_IS_INTERACTIVE=	x11

# https://bugzilla.gnome.org/show_bug.cgi?id=726910
pre-configure:
	perl -pi -e 's,/bin/bash,${LOCALBASE}/bin/bash,' \
		${WRKSRC}/tests/run-tests.sh

.include <bsd.port.mk>
