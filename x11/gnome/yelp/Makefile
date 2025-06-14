COMMENT=		GNOME help browser

DIST_TUPLE=		gnome GNOME yelp 42.3 .

SHARED_LIBS += yelp                      0.0 # 0.0.0

HOMEPAGE=		https://apps.gnome.org/Yelp/

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += bz2 c exslt gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += handy-1 intl lzma sqlite3 webkit2gtk-4.1 xml2 xslt

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

BUILD_DEPENDS=		x11/gnome/yelp-xsl \
			textproc/itstool

RUN_DEPENDS=		x11/gnome/yelp-xsl

LIB_DEPENDS=		archivers/xz \
			www/webkitgtk4,webkitgtk41 \
			x11/libhandy

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
