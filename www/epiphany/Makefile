# $OpenBSD: Makefile,v 1.183 2019/05/08 18:28:29 jasper Exp $

COMMENT=	GNOME web browser based on webkit

GNOME_PROJECT=	epiphany
GNOME_VERSION=	3.32.2
MAJOR_V=	${GNOME_VERSION:R}
SUBST_VARS=	MAJOR_V

CATEGORIES=	www

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject dazzle-1.0 gck-1 gcr-base-3
WANTLIB += gcr-ui-3 gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmp
WANTLIB += gobject-2.0 gtk-3 handy-0.0 hogweed icudata icuuc intl
WANTLIB += javascriptcoregtk-4.0 json-glib-1.0 m nettle notify
WANTLIB += p11-kit pango-1.0 pangocairo-1.0 secret-1 soup-2.4
WANTLIB += sqlite3 webkit2gtk-4.0 xml2

BUILD_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

RUN_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

LIB_DEPENDS=	devel/libnotify \
		www/webkitgtk4 \
		x11/gnome/gcr \
		x11/gnome/libdazzle \
		x11/libhandy

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-libav

MODULES=	devel/dconf \
		devel/meson \
		x11/gnome

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache yelp


CONFIGURE_ARGS=		-Ddistributor_name="OpenBSD ports"

MODGNOME_CPPFLAGS=	-I${X11BASE}/include

TEST_DEPENDS=		${BASE_PKGPATH}
TEST_IS_INTERACTIVE=	x11
PORTHOME=		${WRKDIR}

.include <bsd.port.mk>
