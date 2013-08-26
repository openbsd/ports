# $OpenBSD: Makefile,v 1.57 2013/08/26 20:21:13 bcallah Exp $

SHARED_ONLY=		Yes

COMMENT=		simple GTK desktop news aggregator

DISTNAME=		liferea-1.10.1a
CATEGORIES=		www x11
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://liferea.sourceforge.net/

MAINTAINER=		Wiktor Izdebski <vicviq@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender Xt atk-1.0 atk-bridge-2.0 atspi c cairo-gobject
WANTLIB += cairo dbus-1 dbus-glib-1 enchant expat ffi fontconfig freetype
WANTLIB += gailutil-3 gcrypt gdk-3 gdk_pixbuf-2.0 geoclue gio-2.0
WANTLIB += girepository-1.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += graphite2 gstapp-1.0 gstaudio-1.0 gstbase-1.0 gstfft-1.0 
WANTLIB += gstpbutils-1.0 gstreamer-1.0 gsttag-1.0 gstvideo-1.0 gthread-2.0
WANTLIB += gtk-3 harfbuzz-icu harfbuzz icudata icui18n icuuc
WANTLIB += javascriptcoregtk-3.0 jpeg json-glib-1.0 m notify orc-0.4 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre peas-1.0 peas-gtk-1.0 pixman-1 png
WANTLIB += pthread-stubs pthread secret-1 soup-2.4 sqlite3 stdc++ webkitgtk-3.0
WANTLIB += webp xcb-render xcb-shm xcb xml2 xslt z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=liferea/}

MODULES=		devel/gettext \
			textproc/intltool
LIB_DEPENDS=		devel/libnotify>=0.7.2 \
			textproc/libxslt \
			devel/libpeas \
			devel/libsoup,-main \
			devel/json-glib \
			textproc/enchant \
			www/webkit,gtk3

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+2,-guic \
			x11/hicolor-icon-theme

FAKE_FLAGS=		htmldocdir="${PREFIX}/share/doc/liferea/html"

MODGCONF2_SCHEMAS_DIR=	liferea

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--docdir=${PREFIX}/share/doc/liferea \
			--enable-libnotify
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

USE_GMAKE =		Yes

.include <bsd.port.mk>
