# $OpenBSD: Makefile,v 1.81 2015/08/25 13:18:28 sthen Exp $

SHARED_ONLY=		Yes

V=			1.10.16
COMMENT=		simple GTK desktop news aggregator
DISTNAME=		liferea-${V}
CATEGORIES=		www x11
EXTRACT_SUFX=		.tar.bz2
REVISION=		0

HOMEPAGE=		http://lzone.de/liferea/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0 atspi c
WANTLIB += cairo cairo-gobject dbus-1 enchant epoxy expat ffi fontconfig
WANTLIB += freetype gbm gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB += girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0
WANTLIB += gthread-2.0 gtk-3 harfbuzz harfbuzz-icu icudata icui18n icuuc
WANTLIB += javascriptcoregtk-3.0 jpeg json-glib-1.0 lzma m notify
WANTLIB += orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre peas-1.0
WANTLIB += peas-gtk-1.0 pixman-1 png pthread pthread-stubs secret-1
WANTLIB += soup-2.4 sqlite3 stdc++ webkitgtk-3.0 webp xcb xcb-render
WANTLIB += xcb-shm xml2 xslt z

MASTER_SITES=		https://github.com/lwindolf/liferea/releases/download/v${V}/

MODULES=		devel/dconf \
			devel/gettext \
			textproc/intltool

LIB_DEPENDS=		devel/libnotify \
			textproc/libxslt \
			devel/libpeas \
			devel/json-glib \
			textproc/enchant \
			www/webkit,gtk3

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic \
			x11/hicolor-icon-theme

FAKE_FLAGS=		htmldocdir="${PREFIX}/share/doc/liferea/html"

MODGCONF2_SCHEMAS_DIR=	liferea

# XXX
USE_LIBTOOL=		gnu

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--docdir=${PREFIX}/share/doc/liferea \
			--enable-libnotify
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE=		Yes

.include <bsd.port.mk>
