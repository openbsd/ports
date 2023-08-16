COMMENT=		window and compositing manager based on Clutter

GNOME_PROJECT=		mutter
GNOME_VERSION=		44.3
REVISION=		1

SHARED_LIBS += mutter-cogl-12            0.0 # 0.0.0
SHARED_LIBS += mutter-cogl-pango-12      0.0 # 0.0.0
SHARED_LIBS += mutter-clutter-12         0.0 # 0.0.0
SHARED_LIBS += mutter-12                 0.0 # 0.0.0

# see https://gitlab.gnome.org/GNOME/mutter/-/issues/2690#note_1818913
MASTER_SITES0=		https://gitlab.gnome.org/GNOME/mutter/-/merge_requests/3186/
PATCHFILES=		diffs.patch:0
PATCH_DIST_STRIP=	-p1

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xtst atk-1.0 c cairo
WANTLIB += cairo-gobject canberra colord fontconfig fribidi gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-4 gobject-2.0
WANTLIB += graphene-1.0 gtk-4 harfbuzz intl json-glib-1.0 lcms2
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 startup-notification-1
WANTLIB += xcb xcb-randr xcb-res xkbcommon xkbcommon-x11 xkbfile

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

DEBUG_PACKAGES =	${BUILD_PACKAGES}

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection

LIB_DEPENDS=		audio/libcanberra \
			devel/startup-notification \
			graphics/colord \
			graphics/graphene \
			x11/gnome/desktop,-gtk4 \
			x11/xkbcommon

BUILD_DEPENDS=		devel/gsettings-desktop-schemas \
			x11/gnome/settings-daemon

RUN_DEPENDS=		devel/gsettings-desktop-schemas \
			x11/gnome/settings-daemon

# Required by embedded cogl/clutter forks.
CONFIGURE_ARGS +=	-Dsm=true

# cogl
CONFIGURE_ARGS +=	-Dopengl_libname=libGL.so \
			-Dgles2_libname=libGLESv2 \
			-Dudev=false \
			-Dwayland=false \
			-Dxwayland=false \
			-Dlibwacom=false \
			-Dnative_backend=false \
			-Dtests=false \
			-Dprofiler=false \
			-Dsystemd=false

# XXX requires unported gnome-remote-desktop
CONFIGURE_ARGS +=	-Dremote_desktop=false

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

.include <bsd.port.mk>
