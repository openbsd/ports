COMMENT=		GNOME help browser

GNOME_PROJECT=		yelp
GNOME_VERSION=		49.0

SHARED_LIBS += yelp-1                    0.0 # 0.0.0

HOMEPAGE=		https://apps.gnome.org/Yelp/

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += adwaita-1 bz2 c exslt gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-4 intl javascriptcoregtk-6.0 lzma m sqlite3 webkitgtk-6.0
WANTLIB += xml2 xslt

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			devel/meson \
			x11/gnome

BUILD_DEPENDS=		x11/gnome/yelp-xsl \
			textproc/itstool

RUN_DEPENDS=		x11/gnome/yelp-xsl

LIB_DEPENDS=		archivers/xz \
			www/webkitgtk4,webkitgtk60 \
			x11/gnome/libadwaita

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
