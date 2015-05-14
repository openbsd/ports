# $OpenBSD: Makefile,v 1.55 2015/05/14 18:32:17 jasper Exp $

COMMENT=		window and compositing manager

GNOME_PROJECT=		mutter
GNOME_VERSION=		3.16.2

SHARED_LIBS +=  mutter                    1.0 # 0.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject canberra
WANTLIB += canberra-gtk3 clutter-1.0 cogl cogl-pango cogl-path
WANTLIB += dbus-1 drm expat ffi fontconfig freetype gbm gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 girepository-1.0 glapi glib-2.0
WANTLIB += gmodule-2.0 gnome-desktop-3 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 harfbuzz json-glib-1.0 ltdl m ogg pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += startup-notification-1 upower-glib vorbis vorbisfile
WANTLIB += xcb xcb-dri2 xcb-randr xcb-render xcb-shape xcb-shm
WANTLIB += xcb-util xcb-xfixes xcb-xkb xkbcommon xkbcommon-x11
WANTLIB += xkbfile z epoxy

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS += desktop-file-utils gobject-introspection

LIB_DEPENDS=		audio/libcanberra,-gtk3 \
			devel/startup-notification \
			graphics/clutter/core>=1.20.0 \
			devel/gobject-introspection \
			x11/gnome/desktop \
			x11/xkbcommon \
			sysutils/upower

BUILD_DEPENDS=		devel/gsettings-desktop-schemas>=3.16.0 \
			x11/gnome/zenity

RUN_DEPENDS=		devel/gsettings-desktop-schemas>=3.16.0 \
			x11/gnome/zenity

# disable -Werror which breaks at least hppa/mips64/sparc64
CONFIGURE_ARGS +=	--enable-compile-warnings=yes

.include <bsd.port.mk>
