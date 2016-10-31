# $OpenBSD: Makefile,v 1.65 2016/10/31 16:14:27 jasper Exp $

COMMENT=		window and compositing manager

GNOME_PROJECT=		mutter
GNOME_VERSION=		3.22.1

SHARED_LIBS +=  mutter                    2.0 # 0.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject canberra
WANTLIB += canberra-gtk3 dbus-1 drm epoxy expat ffi fontconfig
WANTLIB += freetype gbm gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gnome-desktop-3 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl json-glib-1.0
WANTLIB += ltdl m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += upower-glib vorbis vorbisfile xcb xcb-dri2 xcb-randr
WANTLIB += xcb-render xcb-res xcb-shm xcb-util xcb-xfixes xcb-xkb
WANTLIB += xkbcommon xkbcommon-x11 xkbfile z

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS += desktop-file-utils gobject-introspection

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/startup-notification \
			devel/gobject-introspection \
			x11/gnome/desktop \
			x11/xkbcommon \
			sysutils/upower

BUILD_DEPENDS=		devel/gsettings-desktop-schemas>=3.16.0 \
			x11/gnome/zenity

RUN_DEPENDS=		devel/gsettings-desktop-schemas>=3.16.0 \
			x11/gnome/zenity

# Required by embedded cogl/clutter forks.
CONFIGURE_ARGS +=	--with-x \
# cogl
CONFIGURE_ARGS +=       --with-gl-libname=libGL.so \
                        --with-gles1-libname=libGLESv1_CM \
                        --with-gles2-libname=libGLESv2 \
                        --enable-kms-egl-platform=yes \
                        --enable-xlib-egl-platform=yes \
			--disable-wayland-egl-server

# disable -Werror which breaks at least hppa/mips64/sparc64
CONFIGURE_ARGS +=	--enable-compile-warnings=yes

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

pre-configure:
# XXX cc1: error: unrecognized command line option
	sed -i -e 's,-Wempty-body,,' \
		-e 's,-Werror=maybe-uninitialized,,' \
		-e 's,-Wno-error=maybe-uninitialized,,' \
		-e 's,-Werror=redundant-decls,,' \
		-e 's,-Wvla,,' \
		${WRKSRC}/{,cogl,clutter}/configure \
		${WRKSRC}/cogl/tests/conform/Makefile.in \
		${WRKSRC}/cogl/test-fixtures/Makefile.in

.include <bsd.port.mk>
