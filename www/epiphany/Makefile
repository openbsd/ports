COMMENT=	GNOME web browser based on webkit

GNOME_PROJECT=	epiphany
GNOME_VERSION=	46.0

CATEGORIES=	www

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += adwaita-1 archive c cairo gck-2 gcr-4 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmp gobject-2.0 graphene-1.0 gstreamer-1.0
WANTLIB += gtk-4 hogweed intl javascriptcoregtk-6.0 json-glib-1.0
WANTLIB += m nettle pango-1.0 portal portal-gtk4 secret-1 soup-3.0
WANTLIB += sqlite3 webkitgtk-6.0 xml2

BUILD_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

RUN_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

LIB_DEPENDS=	archivers/libarchive \
		sysutils/flatpak/libportal,-gtk4 \
		www/webkitgtk4,webkitgtk60 \
		x11/gnome/gcr4 \
		x11/gnome/libadwaita

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
