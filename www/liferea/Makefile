# $OpenBSD: Makefile,v 1.109 2019/07/12 20:50:47 sthen Exp $

BROKEN-i386=		hangs during build while running g-ir-scanner

COMMENT=		simple GTK desktop news aggregator

V=			1.12.4
DISTNAME=		liferea-${V}
REVISION=		1

CATEGORIES=		www news x11

HOMEPAGE=		https://lzone.de/liferea/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} EGL GL GLESv2 ICE SM X11 X11-xcb
WANTLIB += Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xt Xxf86vm aspell atk-1.0 atk-bridge-2.0
WANTLIB += atspi brotlicommon brotlidec c cairo cairo-gobject
WANTLIB += dbus-1 drm enchant-2 epoxy expat ffi fontconfig freetype
WANTLIB += fribidi gbm gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0
WANTLIB += glapi glib-2.0 gmodule-2.0 gobject-2.0 gpg-error graphite2
WANTLIB += gstallocators-1.0 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstfft-1.0 gstgl-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz harfbuzz-icu
WANTLIB += hyphen iconv icudata icui18n icuuc intl javascriptcoregtk-4.0
WANTLIB += jpeg json-glib-1.0 lzma m notify orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0
WANTLIB += pixman-1 png secret-1 soup-2.4 sqlite3 tasn1 webkit2gtk-4.0
WANTLIB += webp webpdemux woff2common woff2dec xcb xcb-dri2 xcb-dri3
WANTLIB += xcb-glx xcb-present xcb-render xcb-shm xcb-sync xcb-xfixes
WANTLIB += xml2 xshmfence xslt z

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

# lib/liferea/plugins/{gnome-keyring,libnotify,media-player}.py
RUN_DEPENDS +=		devel/libnotify \
			multimedia/gstreamer1/core \
			x11/gnome/libgnome-keyring

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
