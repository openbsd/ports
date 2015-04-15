# $OpenBSD: Makefile,v 1.91 2015/04/15 10:08:28 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	image viewer and browser for GNOME

GNOME_PROJECT=	gthumb
GNOME_VERSION=	3.4.0

API_V=		${GNOME_VERSION:R}
SUBST_VARS=	API_V

CATEGORIES=	graphics

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject clutter-1.0 clutter-gtk-1.0
WANTLIB += dbus-1 epoxy exiv2 expat ffi fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gstreamer-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz jpeg json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += rsvg-2 secret-1 soup-2.4 stdc++ tiff lcms2 raw
WANTLIB += webkit2gtk-4.0 webp xcb xcb-render xcb-shm z

MODULES=	devel/dconf \
		devel/gettext \
		x11/gnome

BUILD_DEPENDS +=	multimedia/gstreamer1/plugins-base

# web albums
BUILD_DEPENDS +=	devel/bison

LIB_DEPENDS=	graphics/clutter/clutter-gtk  \
		graphics/exiv2 \
		graphics/libraw \
		graphics/libwebp \
		multimedia/gstreamer1/core \
		www/webkitgtk4 \
		x11/gnome/librsvg

RUN_DEPENDS=	graphics/dcraw \
		multimedia/gstreamer1/plugins-base

MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache shared-mime-info yelp

MODGNOME_CPPFLAGS=	-I${X11BASE}/include
MODGNOME_LDFLAGS=	-L${X11BASE}/lib

CONFIGURE_STYLE=	gnu

# XXX remove at next major upgrade
# https://git.gnome.org/browse/gthumb/commit/?id=4c64cb990fc1e32e269571b34065d7aa8d92c79e
pre-configure:
	perl -pi -e 's/webkit2gtk-3.0/webkit2gtk-4.0/g' \
		${WRKSRC}/configure

post-install:
	rm ${PREFIX}/lib/gthumb/extensions/*.{a,la}

.include <bsd.port.mk>
