# $OpenBSD: Makefile,v 1.116 2021/11/02 00:02:51 sthen Exp $

COMMENT=		simple GTK desktop news aggregator

V=			1.12.9
DISTNAME=		liferea-${V}
REVISION=		1

CATEGORIES=		www news x11

HOMEPAGE=		https://lzone.de/liferea/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += EGL GL ICE SM X11 X11-xcb Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm
WANTLIB += aspell atk-1.0 atk-bridge-2.0 brotlicommon brotlidec
WANTLIB += c cairo cairo-gobject drm enchant-2 epoxy expat ffi
WANTLIB += fontconfig freetype fribidi gbm gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glapi glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gpg-error graphite2 gstallocators-1.0 gstapp-1.0
WANTLIB += gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstgl-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz harfbuzz-icu hyphen iconv icudata icui18n
WANTLIB += icuuc idn2 intl javascriptcoregtk-4.0 jpeg json-glib-1.0
WANTLIB += lzma m notify openjp2 orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0 pixman-1 png
WANTLIB += psl secret-1 soup-2.4 sqlite3 tasn1 unistring webkit2gtk-4.0
WANTLIB += webp webpdemux woff2common woff2dec xcb xcb-dri2 xcb-dri3
WANTLIB += xcb-glx xcb-present xcb-render xcb-shm xcb-sync xcb-xfixes
WANTLIB += xml2 xshmfence xslt z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		https://github.com/lwindolf/liferea/releases/download/v${V}/

EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/dconf \
			lang/python \
			textproc/intltool

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
