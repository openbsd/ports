COMMENT=		file manager for the MATE desktop

REVISION=		1

SHARED_LIBS +=  caja-extension            5.0 # 5.0

MATE_PROJECT=		caja

CATEGORIES=		x11

# LGPLv2/GFDLv1.1/GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 X11-xcb Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += dbus-1 dconf epoll-shim epoxy exempi exif expat ffi
WANTLIB += fontconfig freetype fribidi gailutil-3 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 gtk-layer-shell harfbuzz iconv intl
WANTLIB += jpeg lzma m mate-desktop-2 notify pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre2-8 pixman-1 png startup-notification-1
WANTLIB += wayland-client wayland-cursor wayland-egl xcb xcb-render
WANTLIB += xcb-shm xcb-util xkbcommon xml2 z

MODULES=		devel/dconf \
			x11/gnome

RUN_DEPENDS=		x11/gnome/gvfs

LIB_DEPENDS=		devel/libnotify \
			graphics/libexif \
			textproc/exempi \
			wayland/gtk-layer-shell \
			x11/mate/desktop

MODGNOME_TOOLS=		shared-mime-info gobject-introspection \
			gtk-update-icon-cache

CONFIGURE_STYLE=	gnu

CFLAGS +=		-std=gnu99

.include <bsd.port.mk>
