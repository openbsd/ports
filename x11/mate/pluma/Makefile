# $OpenBSD: Makefile,v 1.32 2021/11/02 00:02:59 sthen Exp $

USE_WXNEEDED=		Yes

COMMENT=		powerful text editor for the MATE desktop
REVISION=		0

CATEGORIES=		textproc

MATE_PROJECT=		pluma

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender aspell atk-1.0 atk-bridge-2.0 c cairo
WANTLIB += cairo-gobject enchant-2 epoxy expat fontconfig freetype
WANTLIB += fribidi gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-3
WANTLIB += gtksourceview-4 harfbuzz iconv intl lzma m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 peas-1.0 peas-gtk-1.0
WANTLIB += pixman-1 png pthread xcb xcb-render xcb-shm xml2 z
WANTLIB += execinfo

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

USE_LIBTOOL=		gnu

BUILD_DEPENDS=		devel/iso-codes
RUN_DEPENDS=		devel/iso-codes

LIB_DEPENDS=		devel/libpeas \
			textproc/enchant2 \
			x11/gtksourceview4

MODGNOME_TOOLS=		desktop-file-utils gobject-introspection yelp

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-tests

.include <bsd.port.mk>
