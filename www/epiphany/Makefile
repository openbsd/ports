# $OpenBSD: Makefile,v 1.174 2018/07/06 06:04:43 espie Exp $

COMMENT=	GNOME web browser based on webkit

GNOME_PROJECT=	epiphany
GNOME_VERSION=	3.28.3.1
MAJOR_V=	${GNOME_VERSION:R}
SUBST_VARS=	MAJOR_V
REVISION=	2

CATEGORIES=	www

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c cairo gcr-base-3 gcr-ui-3 gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmp gobject-2.0 gtk-3 hogweed
WANTLIB += icuuc intl javascriptcoregtk-4.0 json-glib-1.0 m nettle
WANTLIB += notify pango-1.0 secret-1 soup-2.4 sqlite3 webkit2gtk-4.0
WANTLIB += xml2 $(LIBECXX)

BUILD_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

RUN_DEPENDS=	devel/iso-codes \
		devel/gsettings-desktop-schemas

LIB_DEPENDS=	devel/libnotify \
		www/webkitgtk4 \
		x11/gnome/gcr

# webkit browsing
RUN_DEPENDS +=	multimedia/gstreamer1/plugins-libav

MODULES=	devel/dconf \
		devel/meson \
		x11/gnome

COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

MODGNOME_TOOLS=	desktop-file-utils gtk-update-icon-cache yelp


CONFIGURE_ARGS=		-Ddistributor_name="OpenBSD ports"

# error: 'for' loop initial declarations are only allowed in C99 or C11 mode
MODGNOME_CPPFLAGS=	-I${X11BASE}/include -std=c99

TEST_DEPENDS=		${BASE_PKGPATH}
TEST_IS_INTERACTIVE=	x11
PORTHOME=		${WRKDIR}

.include <bsd.port.mk>
