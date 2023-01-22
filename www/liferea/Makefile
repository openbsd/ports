COMMENT=		simple GTK desktop news aggregator

V=			1.14.0
DISTNAME=		liferea-${V}

CATEGORIES=		www news x11

HOMEPAGE=		https://lzone.de/liferea/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL ICE SM X11 X11-xcb Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xt Xxf86vm aspell atk-1.0 atk-bridge-2.0 atspi
WANTLIB += brotlicommon brotlidec c cairo cairo-gobject dbus-1
WANTLIB += drm enchant-2 epoxy execinfo expat ffi fontconfig freetype
WANTLIB += fribidi gbm gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glapi glib-2.0 gmodule-2.0 gobject-2.0 gpg-error graphite2
WANTLIB += gstallocators-1.0 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstfft-1.0 gstgl-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz harfbuzz-icu
WANTLIB += hyphen iconv icudata icui18n icuuc idn2 intl javascriptcoregtk-4.0
WANTLIB += jpeg json-glib-1.0 lcms2 lzma m openjp2 orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre2-8 peas-1.0 peas-gtk-1.0
WANTLIB += pixman-1 png psl secret-1 soup-2.4 sqlite3 tasn1 unistring
WANTLIB += webkit2gtk-4.0 webp webpdemux woff2common woff2dec
WANTLIB += xcb xcb-dri2 xcb-dri3 xcb-glx xcb-present xcb-render
WANTLIB += xcb-shm xcb-sync xcb-xfixes xml2 xshmfence xslt z

COMPILER=		base-clang ports-gcc base-gcc

MASTER_SITES=		https://github.com/lwindolf/liferea/releases/download/v${V}/

EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/dconf \
			lang/python \
			textproc/intltool

USE_GMAKE=		Yes

BUILD_DEPENDS=		devel/gobject-introspection

LIB_DEPENDS=		devel/json-glib \
			devel/libpeas \
			textproc/enchant2 \
			www/webkitgtk4

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic

# lib/liferea/plugins/{libnotify,media-player}.py
RUN_DEPENDS +=		devel/libnotify \
			multimedia/gstreamer1/core

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--docdir=${PREFIX}/share/doc/liferea
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# https://github.com/lwindolf/liferea/issues/767
MAKE_ENV +=		WEBKIT_DISABLE_COMPOSITING_MODE=1

FAKE_FLAGS=		htmldocdir="${PREFIX}/share/doc/liferea/html"

post-install:
	rm ${PREFIX}/lib/liferea/web-extension/*.{a,la}
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/liferea/plugins/

.include <bsd.port.mk>
