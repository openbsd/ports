# $OpenBSD: Makefile,v 1.192 2020/05/30 12:52:00 jasper Exp $

COMMENT=	GNOME web browser based on webkit

GNOME_PROJECT=	epiphany
GNOME_VERSION=	3.36.2

CATEGORIES=	www

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += c cairo dazzle-1.0 gcr-base-3 gcr-ui-3 gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmp gobject-2.0 gtk-3 handy-0.0 hogweed
WANTLIB += intl javascriptcoregtk-4.0 json-glib-1.0 m nettle
WANTLIB += notify pango-1.0 secret-1 soup-2.4 sqlite3 webkit2gtk-4.0
WANTLIB += xml2 atk-1.0

BUILD_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

RUN_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

LIB_DEPENDS=	devel/libnotify \
		www/webkitgtk4 \
		x11/gnome/gcr \
		x11/gnome/libdazzle>=3.36.0 \
		x11/libhandy>=0.0.11

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

TEST_DEPENDS=		${BASE_PKGPATH}
TEST_IS_INTERACTIVE=	x11
PORTHOME=		${WRKDIR}

.include <bsd.port.mk>
