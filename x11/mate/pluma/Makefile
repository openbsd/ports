# $OpenBSD: Makefile,v 1.22 2019/04/02 18:59:44 ajacoutot Exp $

USE_WXNEEDED=		Yes

COMMENT=		powerful text editor for the MATE desktop

CATEGORIES=		textproc

MATE_PROJECT=		pluma
REVISION=		1

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender aspell atk-1.0 atk-bridge-2.0
WANTLIB += c cairo cairo-gobject enchant-2 epoxy expat ffi fontconfig
WANTLIB += freetype fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-3 gtksourceview-3.0 harfbuzz iconv intl lzma m
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre peas-1.0
WANTLIB += peas-gtk-1.0 pixman-1 png16 pthread xcb xcb-render
WANTLIB += xcb-shm xml2 z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			x11/gnome

BUILD_DEPENDS=		devel/iso-codes
RUN_DEPENDS=		devel/iso-codes

LIB_DEPENDS=		devel/libpeas \
			textproc/enchant2 \
			x11/gtksourceview3

MODGNOME_TOOLS=		desktop-file-utils yelp

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-tests

.include <bsd.port.mk>
