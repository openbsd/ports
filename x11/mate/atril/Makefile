# $OpenBSD: Makefile,v 1.29 2020/03/21 16:14:53 robert Exp $

USE_WXNEEDED=		Yes

COMMENT=		document viewer for the MATE desktop

CATEGORIES=		graphics

SHARED_LIBS +=  atrildocument             3.0 # 3.0
SHARED_LIBS +=  atrilview                 3.0 # 3.0

MATE_PROJECT=		atril

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm bz2
WANTLIB += c crypto drm epoxy expat ffi fontconfig freetype gbm
WANTLIB += gio-2.0 glapi glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += iconv intl m pcre pixman-1 pthread sqlite3
WANTLIB += ${COMPILER_LIBCXX} xcb xcb-dri2 xcb-glx xcb-render xcb-shm xcb-xfixes
WANTLIB += archive atk-1.0 atk-bridge-2.0 avahi-common
WANTLIB += cairo-gobject cairo caja-extension dbus-1 djvulibre
WANTLIB += enchant-2 ${LIBECXX} gailutil-3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gmp gpg-error graphite2 gs gstapp-1.0 gstaudio-1.0
WANTLIB += gstbase-1.0 gstfft-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gtk-3 gxps harfbuzz-icu harfbuzz hogweed hyphen
WANTLIB += icudata icui18n icuuc idn2 javascriptcoregtk-4.0 jpeg lcms2
WANTLIB += lz4 lzma nettle notify openjp2 orc-0.4 p11-kit pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 png poppler-glib poppler psl secret-1
WANTLIB += soup-2.4 spectre tasn1 tiff unistring webkit2gtk-4.0 webp xml2
WANTLIB += z xslt aspell
WANTLIB += gstgl-1.0 kpathsea synctex
WANTLIB += Xau Xdmcp b2 charset
WANTLIB += brotlicommon brotlidec fribidi webpdemux woff2common
WANTLIB += woff2dec
WANTLIB += xcb-dri3 xcb-present xcb-sync xshmfence zstd

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			x11/gnome

LIB_DEPENDS=		databases/sqlite3 \
			multimedia/gstreamer1/plugins-base \
			print/poppler \
			print/libspectre \
			print/texlive/base,-mktexlsr \
			print/texlive/base,-synctex \
			graphics/djvulibre \
			graphics/libgxps \
			textproc/icu4c \
			www/webkitgtk4 \
			x11/mate/caja
BUILD_DEPENDS=		devel/gsettings-desktop-schemas
RUN_DEPENDS=		devel/gsettings-desktop-schemas

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache yelp

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-pixbuf

.include <bsd.port.mk>
