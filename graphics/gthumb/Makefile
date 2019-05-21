# $OpenBSD: Makefile,v 1.110 2019/05/21 10:08:03 sthen Exp $

COMMENT=	image viewer and browser for GNOME

GNOME_PROJECT=	gthumb
GNOME_VERSION=	3.6.2
REVISION=	1

API_V=		${GNOME_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=	API_V

CATEGORIES=	graphics

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL ICE SM X11 X11-xcb Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xxf86vm atk-1.0 atk-bridge-2.0 brotlicommon
WANTLIB += brotlidec c cairo cairo-gobject clutter-1.0 clutter-gtk-1.0
WANTLIB += cogl cogl-pango cogl-path colord colordprivate croco-0.6
WANTLIB += drm enchant-2 epoxy exiv2 expat ffi fontconfig freetype
WANTLIB += fribidi gbm gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gpg-error graphite2
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstgl-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz harfbuzz-icu hyphen iconv
WANTLIB += icudata icui18n icuuc idn2 intl jasper javascriptcoregtk-4.0
WANTLIB += jpeg json-glib-1.0 lcms2 lzma m notify openjp2 orc-0.4
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png psl raw rsvg-2 secret-1 soup-2.4 sqlite3 tasn1
WANTLIB += tiff unistring webkit2gtk-4.0 webp webpdemux woff2common
WANTLIB += woff2dec xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present
WANTLIB += xcb-render xcb-shm xcb-sync xcb-xfixes xml2 xshmfence
WANTLIB += xslt z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	devel/dconf \
		x11/gnome

BUILD_DEPENDS +=	multimedia/gstreamer1/plugins-base

# web albums
BUILD_DEPENDS +=	devel/bison

LIB_DEPENDS=	graphics/clutter/clutter-gtk  \
		graphics/colord \
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

post-install:
	rm ${PREFIX}/lib/gthumb/extensions/*.{a,la}

.include <bsd.port.mk>
