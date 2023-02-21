COMMENT=	GNOME web browser based on webkit

GNOME_PROJECT=	epiphany
GNOME_VERSION=	43.1

CATEGORIES=	www

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += archive atk-1.0 c cairo dazzle-1.0 gcr-base-3 gcr-ui-3
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmp gobject-2.0
WANTLIB += gtk-3 handy-1 hogweed intl javascriptcoregtk-4.1 json-glib-1.0
WANTLIB += m nettle pango-1.0 portal portal-gtk3 secret-1 soup-3.0
WANTLIB += sqlite3 webkit2gtk-4.1 xml2

BUILD_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

RUN_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

LIB_DEPENDS=	sysutils/libportal,-gtk3 \
		www/webkitgtk4,webkitgtk41 \
		x11/gnome/at-spi2-core \
		x11/gnome/gcr \
		x11/gnome/libdazzle \
		x11/libhandy

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-libav

# prevent WebKitWebProcess from crashing due to:
# WebKit wasn't able to find a WebVTT encoder. Subtitles handling will be
# degraded unless gst-plugins-bad is installed
# (can be trigger on https://www.washingtonpost.com/)
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-bad

MODULES=	devel/dconf \
		devel/meson \
		x11/gnome

DEBUG_PACKAGES =${BUILD_PACKAGES}

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache yelp

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

TEST_DEPENDS=		${BASE_PKGPATH}
TEST_IS_INTERACTIVE=	x11
PORTHOME=		${WRKDIR}

.include <bsd.port.mk>
