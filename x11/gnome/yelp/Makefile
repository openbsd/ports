COMMENT=		GNOME help browser

GNOME_PROJECT=		yelp
GNOME_VERSION=		42.2
REVISION=		3

SHARED_LIBS +=  yelp                 0.0      # unknown

# GPLv2
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL X11 X11-xcb Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xxf86vm aom aspell atk-1.0 atk-bridge-2.0 atspi
WANTLIB += avif brotlicommon brotlidec brotlienc bz2 c cairo cairo-gobject
WANTLIB += dav1d dbus-1 drm enchant-2 epoll-shim epoxy execinfo
WANTLIB += expat exslt ffi fontconfig freetype fribidi gbm gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glapi glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error graphite2 gstallocators-1.0 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstgl-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gsttranscoder-1.0 gstvideo-1.0
WANTLIB += gtk-3 handy-1 harfbuzz harfbuzz-icu hwy hyphen iconv
WANTLIB += icudata icui18n icuuc idn2 intl javascriptcoregtk-4.1
WANTLIB += jpeg jxl jxl_cms lcms2 lzma m nghttp2 orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 pixman-1 png psl
WANTLIB += secret-1 sharpyuv soup-3.0 sqlite3 tasn1 unistring
WANTLIB += wayland-client wayland-cursor wayland-egl wayland-server
WANTLIB += webkit2gtk-4.1 webp webpdemux woff2common woff2dec
WANTLIB += xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-randr
WANTLIB += xcb-render xcb-shm xcb-sync xcb-xfixes xkbcommon xml2
WANTLIB += xshmfence xslt z

COMPILER=		base-clang ports-gcc base-gcc

MODULES=		devel/dconf \
			x11/gnome

BUILD_DEPENDS=		x11/gnome/yelp-xsl \
			textproc/itstool

RUN_DEPENDS=		x11/gnome/yelp-xsl

LIB_DEPENDS=		archivers/xz \
			www/webkitgtk4,webkitgtk41 \
			x11/libhandy

MODGNOME_TOOLS=		desktop-file-utils gtk-update-icon-cache

CONFIGURE_STYLE=	gnu

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	rm ${PREFIX}/lib/yelp/web-extensions/*.{a,la}

.include <bsd.port.mk>
