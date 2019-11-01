# $OpenBSD: Makefile,v 1.118 2019/11/01 19:42:26 jasper Exp $

COMMENT=	interfaces for interacting with online accounts

GNOME_PROJECT=	gnome-online-accounts
GNOME_VERSION=	3.34.1

SHARED_LIBS +=  goa-1.0              4.0      # .0.0
SHARED_LIBS +=  goa-backend-1.0      4.0      # .1.0

# LGPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm
WANTLIB += aspell atk-1.0 atk-bridge-2.0 brotlicommon brotlidec
WANTLIB += c cairo cairo-gobject drm enchant-2 epoxy expat ffi
WANTLIB += fontconfig freetype fribidi gbm gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glapi glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gstapp-1.0 gstaudio-1.0 Xau Xdmcp openjp2 png
WANTLIB += gstbase-1.0 gstfft-1.0 gstgl-1.0 gstpbutils-1.0 gstreamer-1.0
WANTLIB += gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz
WANTLIB += harfbuzz-icu hyphen iconv icudata icui18n icuuc idn2
WANTLIB += intl javascriptcoregtk-4.0 jpeg json-glib-1.0 lzma
WANTLIB += m notify orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png psl rest-0.7 secret-1 soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 tasn1 unistring webkit2gtk-4.0
WANTLIB += webp webpdemux woff2common woff2dec xcb xcb-dri2 xcb-dri3
WANTLIB += xcb-glx xcb-present xcb-render xcb-shm xcb-sync xcb-xfixes
WANTLIB += xml2 xshmfence xslt z ${COMPILER_LIBCXX}

COMPILER=	base-clang ports-gcc base-gcc

MODULES=	devel/dconf \
		x11/gnome

LIB_DEPENDS=	devel/json-glib \
		net/librest \
		x11/gnome/libsecret \
		www/webkitgtk4

MODGNOME_TOOLS=	docbook gobject-introspection gtk-update-icon-cache vala

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-gudev

post-install:
	rm ${PREFIX}/lib/goa-1.0/web-extensions/*.{a,la}

.include <bsd.port.mk>
