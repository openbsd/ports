# $OpenBSD: Makefile,v 1.12 2017/07/26 22:45:33 sthen Exp $

USE_WXNEEDED=		Yes

COMMENT=		powerful text editor for the MATE desktop

CATEGORIES=		textproc

MATE_PROJECT=		pluma
MATE_VERSION=		1.18.2
REVISION=		5

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender c epoxy expat ffi fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += iconv intl m pcre pixman-1 pthread pthread-stubs ${COMPILER_LIBCXX}
WANTLIB += xcb xcb-render xcb-shm z
WANTLIB += atk-1.0 atk-bridge-2.0 atspi cairo-gobject cairo dbus-1
WANTLIB += enchant gdk-3 gdk_pixbuf-2.0 girepository-1.0 graphite2
WANTLIB += gtk-3 gtksourceview-3.0 harfbuzz lzma pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 peas-1.0 peas-gtk-1.0 png xml2

MODULES=		devel/dconf \
			x11/gnome

BUILD_DEPENDS=		devel/iso-codes
RUN_DEPENDS=		devel/iso-codes

LIB_DEPENDS=		devel/libpeas \
			textproc/enchant \
			x11/gtksourceview3

MODGNOME_TOOLS=		desktop-file-utils yelp

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-tests

.include <bsd.port.mk>
