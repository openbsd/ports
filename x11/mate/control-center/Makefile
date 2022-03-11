COMMENT=		MATE control center

SHARED_LIBS +=  mate-slab                 0.0 # 0.0
SHARED_LIBS +=  mate-window-settings      1.0 # 1.0

MATE_PROJECT=		mate-control-center
REVISION=		1

CATEGORIES=		x11

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE SM X11 X11-xcb Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender Xss
WANTLIB += accountsservice atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB += canberra canberra-gtk3 dconf epoxy
WANTLIB += expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz iconv intl ltdl lzma m marco-private
WANTLIB += mate-desktop-2 mate-menu matekbd matekbdui ogg pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png polkit-gobject-1
WANTLIB += rsvg-2 startup-notification-1 vorbis vorbisfile xcb
WANTLIB += xcb-render xcb-shm xcb-util xkbfile xklavier xml2 z
WANTLIB += execinfo jpeg

MODULES=		x11/gnome

LIB_DEPENDS=		devel/startup-notification \
			sysutils/accountsservice \
			x11/mate/marco \
			x11/mate/menus \
			x11/mate/libmatekbd

BUILD_DEPENDS=		x11/mate/settings-daemon \
			devel/iso-codes \
			devel/gsettings-desktop-schemas

RUN_DEPENDS=		x11/mate/settings-daemon \
			devel/iso-codes \
			devel/gsettings-desktop-schemas

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp \
			shared-mime-info

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/mate-control-center

CONFIGURE_STYLE=	gnu

CFLAGS +=		-std=gnu99

.include <bsd.port.mk>
