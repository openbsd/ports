# $OpenBSD: Makefile,v 1.74 2015/01/10 05:24:25 bcallah Exp $

SHARED_ONLY=		Yes

V=			1.10.13
COMMENT=		simple GTK desktop news aggregator
DISTNAME=		liferea-${V}
CATEGORIES=		www x11
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://lzone.de/liferea/
MAINTAINER=		Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 enchant expat ffi
WANTLIB += fontconfig freetype gbm gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB += gstfft-1.0 gstpbutils-1.0 gstreamer-1.0 gsttag-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz harfbuzz-icu
WANTLIB += icudata icui18n icuuc javascriptcoregtk-3.0 jpeg json-glib-1.0
WANTLIB += lzma m notify orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre peas-1.0 peas-gtk-1.0 pixman-1 png pthread pthread-stubs
WANTLIB += secret-1 soup-2.4 sqlite3 stdc++ webkitgtk-3.0 webp
WANTLIB += xcb xcb-render xcb-shm xml2 xslt z

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
			x11/gtk+2,-guic \
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
