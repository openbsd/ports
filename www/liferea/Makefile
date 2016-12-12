# $OpenBSD: Makefile,v 1.86 2016/12/12 14:31:45 ajacoutot Exp $

V=			1.10.19
COMMENT=		simple GTK desktop news aggregator
DISTNAME=		liferea-${V}
CATEGORIES=		www x11
EXTRACT_SUFX=		.tar.bz2
REVISION=		0

HOMEPAGE=		http://lzone.de/liferea/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += EGL GL ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm atk-1.0
WANTLIB += atk-bridge-2.0 atspi c cairo cairo-gobject dbus-1 drm
WANTLIB += enchant epoxy expat ffi fontconfig freetype gbm gcrypt
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 girepository-1.0 glapi
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gpg-error graphite2
WANTLIB += gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 gstpbutils-1.0
WANTLIB += gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0 gtk-3
WANTLIB += harfbuzz harfbuzz-icu iconv icudata icui18n icuuc intl
WANTLIB += javascriptcoregtk-3.0 jpeg json-glib-1.0 lzma m notify
WANTLIB += orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre peas-1.0
WANTLIB += peas-gtk-1.0 pixman-1 png pthread pthread-stubs secret-1
WANTLIB += soup-2.4 sqlite3 stdc++ webkitgtk-3.0 webp xcb xcb-dri2
WANTLIB += xcb-glx xcb-render xcb-shm xcb-xfixes xml2 xslt z

MASTER_SITES=		https://github.com/lwindolf/liferea/releases/download/v${V}/

MODULES=		devel/dconf \
			textproc/intltool

LIB_DEPENDS=		devel/libnotify \
			textproc/libxslt \
			devel/libpeas \
			devel/json-glib \
			textproc/enchant \
			www/webkit,gtk3

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/hicolor-icon-theme \
			x11/gtk+3,-guic

FAKE_FLAGS=		htmldocdir="${PREFIX}/share/doc/liferea/html"

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--docdir=${PREFIX}/share/doc/liferea \
			--enable-libnotify
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE=		Yes

.include <bsd.port.mk>
