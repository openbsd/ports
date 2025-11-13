USE_WXNEEDED=		Yes

REVISION=		4

COMMENT=		image viewer for the MATE desktop

CATEGORIES=		graphics

MATE_PROJECT=		eom

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE MagickCore-6.Q16 MagickWand-6.Q16
WANTLIB += SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi bz2 c cairo cairo-gobject dav1d dbus-1 dconf
WANTLIB += djvulibre epoll-shim epoxy exempi exif expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += girepository-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-3 harfbuzz heif iconv intl jasper jbig
WANTLIB += jpeg lcms2 lzma m mate-desktop-2 openjp2 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 peas-1.0 peas-gtk-1.0
WANTLIB += pixman-1 png raw_r rsvg-2 sharpyuv startup-notification-1
WANTLIB += tiff wayland-client wayland-cursor wayland-egl webp
WANTLIB += webpdemux webpmux xcb xcb-render xcb-shm xcb-util xkbcommon
WANTLIB += xml2 z

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		devel/libpeas \
			graphics/ImageMagick \
			graphics/lcms2 \
			graphics/libexif \
			textproc/exempi \
			x11/mate/desktop

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection \
			gtk-update-icon-cache yelp

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-thumbnailer \
			--without-gdk-pixbuf-thumbnailer

.include <bsd.port.mk>
