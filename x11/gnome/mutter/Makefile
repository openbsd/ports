COMMENT=		window and compositing manager based on Clutter

GNOME_PROJECT=		mutter
GNOME_VERSION=		47.2

SHARED_LIBS += mutter-mtk-15             0.0 # 0.0.0
SHARED_LIBS += mutter-cogl-15            0.0 # 0.0.0
SHARED_LIBS += mutter-cogl-pango-15      0.0 # 0.0.0
SHARED_LIBS += mutter-clutter-15         0.0 # 0.0.0
SHARED_LIBS += mutter-15                 0.0 # 0.0.0

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xtst atk-1.0 c cairo
WANTLIB += canberra colord display-info drm eis fribidi gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-4 gobject-2.0
WANTLIB += graphene-1.0 gtk-4 harfbuzz intl lcms2 m pango-1.0
WANTLIB += pangocairo-1.0 pixman-1 startup-notification-1 wayland-server
WANTLIB += xcb xcb-randr xcb-res xkbcommon xkbcommon-x11 xkbfile

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
			wayland/xwayland \
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
			wayland/xwayland \
			x11/gnome/settings-daemon

CONFIGURE_ARGS +=	-Dopengl_libname=libGL.so \
			-Dgles2_libname=libGLESv2.so \
			-Dudev=false \
			-Dlibwacom=false \
			-Dtests=disabled \
			-Dprofiler=false \
			-Dsystemd=false

# XXX needs libsystemd or libelogind
CONFIGURE_ARGS +=	-Dnative_backend=false

# XXX requires unported gnome-remote-desktop and libinput
CONFIGURE_ARGS +=	-Dremote_desktop=false

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/third_party/xcursor/xcursor.c

.include <bsd.port.mk>
