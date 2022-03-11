COMMENT=	interfaces for interacting with online accounts

GNOME_PROJECT=	gnome-online-accounts
GNOME_VERSION=	3.40.1

SHARED_LIBS +=  goa-1.0              4.0      # .0.0
SHARED_LIBS +=  goa-backend-1.0      4.0      # .1.0

# LGPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL ICE SM X11 X11-xcb Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xt Xxf86vm aspell atk-1.0 atk-bridge-2.0 brotlicommon
WANTLIB += brotlidec c cairo cairo-gobject drm enchant-2 epoxy
WANTLIB += execinfo expat ffi fontconfig freetype fribidi gbm
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gpg-error graphite2 gstallocators-1.0
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstgl-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz harfbuzz-icu hyphen iconv
WANTLIB += icudata icui18n icuuc idn2 intl javascriptcoregtk-4.0
WANTLIB += jpeg json-glib-1.0 lzma m notify openjp2 orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png psl rest-0.7
WANTLIB += secret-1 soup-2.4 soup-gnome-2.4 sqlite3 tasn1 unistring
WANTLIB += webkit2gtk-4.0 webp webpdemux woff2common woff2dec
WANTLIB += xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-render
WANTLIB += xcb-shm xcb-sync xcb-xfixes xml2 xshmfence xslt z

COMPILER=	base-clang ports-gcc base-gcc

MODULES=	devel/dconf \
		x11/gnome

LIB_DEPENDS=	devel/json-glib \
		net/librest \
		x11/gnome/libsecret \
		www/webkitgtk4

MODGNOME_TOOLS=	docbook gobject-introspection gtk-update-icon-cache vala

CONFIGURE_STYLE=gnu

DEBUG_PACKAGES=	${BUILD_PACKAGES}

post-install:
	rm ${PREFIX}/lib/goa-1.0/web-extensions/*.{a,la}

.include <bsd.port.mk>
