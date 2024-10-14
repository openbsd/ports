COMMENT=		window and compositing manager based on Clutter

GNOME_PROJECT=		mutter
GNOME_VERSION=		46.5

SHARED_LIBS +=  mutter-14                 0.0 # 0.0
SHARED_LIBS +=  mutter-clutter-14         0.0 # 0.0
SHARED_LIBS +=  mutter-cogl-14            0.0 # 0.0
SHARED_LIBS +=  mutter-cogl-pango-14      0.0 # 0.0
SHARED_LIBS +=  mutter-mtk-14             0.0 # 0.0

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xtst atk-1.0 c cairo
WANTLIB += canberra colord display-info drm eis fontconfig fribidi
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-4
WANTLIB += gobject-2.0 graphene-1.0 gtk-4 harfbuzz intl lcms2
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 startup-notification-1
WANTLIB += wayland-server xcb xcb-randr xcb-res xkbcommon xkbcommon-x11
WANTLIB += xkbfile

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			sysutils/consolekit \
			wayland/libevdev-openbsd \
			wayland/libinput-openbsd \
			wayland/wayland-protocols \
			x11/gnome/settings-daemon

LIB_DEPENDS=		audio/libcanberra \
			devel/startup-notification \
			graphics/colord \
			graphics/graphene \
			sysutils/libdisplay-info \
			wayland/libei \
			wayland/wayland \
			x11/gnome/desktop,-gtk4 \
			x11/xkbcommon

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			x11/gnome/settings-daemon

CONFIGURE_ARGS +=	-Dopengl_libname=libGL.so \
			-Dgles2_libname=libGLESv2.so \
			-Dudev=false \
			-Dlibwacom=false \
			-Dtests=false \
			-Dprofiler=false \
			-Dsystemd=false

# XXX needs libsystemd or libelogind
CONFIGURE_ARGS +=	-Dnative_backend=false

# XXX requires unported gnome-remote-desktop and libinput
CONFIGURE_ARGS +=	-Dremote_desktop=false

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

.include <bsd.port.mk>
