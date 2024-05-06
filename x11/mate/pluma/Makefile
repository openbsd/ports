USE_WXNEEDED=		Yes

COMMENT=		powerful text editor for the MATE desktop

REVISION=		1

CATEGORIES=		textproc

MATE_PROJECT=		pluma

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 X11-xcb Xext Xfixes Xrandr Xrender aspell
WANTLIB += atk-1.0 c cairo cairo-gobject dconf enchant-2 execinfo
WANTLIB += expat freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3
WANTLIB += gtksourceview-4 harfbuzz iconv intl lzma m mate-desktop-2
WANTLIB += pango-1.0 pangocairo-1.0 peas-1.0 peas-gtk-1.0 pthread
WANTLIB += startup-notification-1 xcb xcb-util xml2 z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

USE_LIBTOOL=		gnu

BUILD_DEPENDS=		devel/iso-codes
RUN_DEPENDS=		devel/iso-codes

LIB_DEPENDS=		devel/libpeas \
			textproc/enchant2 \
			x11/gtksourceview4 \
			x11/mate/desktop

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection yelp

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-tests

.include <bsd.port.mk>
