COMMENT=	GNOME web browser based on webkit

GNOME_PROJECT=	epiphany
GNOME_VERSION=	41.3
REVISION=	0

CATEGORIES=	www

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += archive atk-1.0 c cairo dazzle-1.0 gcr-base-3 gcr-ui-3 gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmp gobject-2.0 gtk-3
WANTLIB += handy-1 hogweed intl javascriptcoregtk-4.0 json-glib-1.0
WANTLIB += m nettle pango-1.0 secret-1 soup-2.4 sqlite3 webkit2gtk-4.0
WANTLIB += xml2

BUILD_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

RUN_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

LIB_DEPENDS=	www/webkitgtk4 \
		x11/gnome/gcr \
		x11/gnome/libdazzle>=3.38.0 \
		x11/libhandy

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-libav

MODULES=	devel/dconf \
		devel/meson \
		x11/gnome

DEBUG_PACKAGES =${BUILD_PACKAGES}

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache yelp

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

CONFIGURE_ARGS =	-Dlibportal=disabled

TEST_DEPENDS=		${BASE_PKGPATH}
TEST_IS_INTERACTIVE=	x11
PORTHOME=		${WRKDIR}

.include <bsd.port.mk>
