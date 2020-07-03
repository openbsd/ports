# $OpenBSD: Makefile,v 1.112 2020/07/03 21:13:17 sthen Exp $

COMMENT=		simple GTK desktop news aggregator

V=			1.12.6
DISTNAME=		liferea-${V}b
REVISION=		0

CATEGORIES=		www news x11

HOMEPAGE=		https://lzone.de/liferea/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL ICE SM X11 X11-xcb Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += Xt Xxf86vm aspell atk-1.0 atk-bridge-2.0 brotlicommon brotlidec
WANTLIB += c cairo cairo-gobject drm enchant-2 epoxy expat ffi fontconfig
WANTLIB += freetype fribidi gbm gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += girepository-1.0 glapi glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0
WANTLIB += gstgl-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz harfbuzz-icu hyphen iconv icudata
WANTLIB += icui18n icuuc idn2 intl javascriptcoregtk-4.0 jpeg json-glib-1.0
WANTLIB += lzma m notify openjp2 orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0 pixman-1 png psl
WANTLIB += secret-1 soup-2.4 sqlite3 tasn1 unistring webkit2gtk-4.0 webp
WANTLIB += webpdemux woff2common woff2dec xcb xcb-dri2 xcb-dri3 xcb-glx
WANTLIB += xcb-present xcb-render xcb-shm xcb-sync xcb-xfixes xml2
WANTLIB += xshmfence xslt z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		https://github.com/lwindolf/liferea/releases/download/v${V}/

EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/dconf \
			lang/python \
			textproc/intltool
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

USE_GMAKE=		Yes

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

FAKE_FLAGS=		htmldocdir="${PREFIX}/share/doc/liferea/html"

post-install:
	rm ${PREFIX}/lib/liferea/web-extension/*.{a,la}
	${MODPY_BIN} ${MODPY_LIBDIR}/compileall.py \
		${PREFIX}/lib/liferea/plugins/

.include <bsd.port.mk>
