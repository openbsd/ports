COMMENT=		tag editor for various audio file formats

GNOME_PROJECT=		easytag
GNOME_VERSION=		2.4.3
REVISION=		13

CATEGORIES=		audio

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB += crypto dbus-1 epoll-shim epoxy expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gtk-3 harfbuzz iconv
WANTLIB += id3 id3tag intl jpeg m ogg opus opusfile pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png speex
WANTLIB += tag vorbis vorbisfile wavpack wayland-client wayland-cursor
WANTLIB += wayland-egl xcb xcb-render xcb-shm xkbcommon z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			x11/gnome

MODGNOME_TOOLS=		desktop-file-utils docbook gtk-update-icon-cache yelp

BUILD_DEPENDS=		devel/appstream-glib

LIB_DEPENDS=		audio/id3lib \
			audio/libid3tag \
			audio/speex \
			audio/flac \
			audio/libvorbis \
			audio/opusfile \
			audio/taglib \
			audio/wavpack \
			x11/gtk+3

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-nautilus-actions

.include <bsd.port.mk>
