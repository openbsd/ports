# $OpenBSD: Makefile,v 1.68 2013/03/29 15:21:04 ajacoutot Exp $

COMMENT=	API documentation browser for GNOME

GNOME_PROJECT=	devhelp
GNOME_VERSION=	3.8.0

SHARED_LIBS +=  devhelp-3                 0.0 # 0.0

CATEGORIES=	textproc

HOMEPAGE=	http://live.gnome.org/devhelp

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xt atk-1.0 atk-bridge-2.0
WANTLIB += atspi c cairo cairo-gobject dbus-1 dbus-glib-1 enchant
WANTLIB += expat ffi fontconfig freetype gailutil-3 gdk-3 gdk_pixbuf-2.0
WANTLIB += geoclue gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gstapp-0.10 gstaudio-0.10 gstbase-0.10 gstfft-0.10
WANTLIB += gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10
WANTLIB += gthread-2.0 gtk-3 harfbuzz icudata icui18n icule icuuc
WANTLIB += javascriptcoregtk-3.0 jpeg m orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 stdc++ webkitgtk-3.0 xcb xcb-render
WANTLIB += xcb-shm xml2 xslt z

MODULES=	devel/dconf \
		devel/gettext \
		lang/python \
		x11/gnome

BUILD_DEPENDS=	x11/gnome/doc-utils
LIB_DEPENDS=	multimedia/gstreamer-0.10/plugins-base \
		www/webkit,gtk3

# for convenience
RUN_DEPENDS +=	x11/gnome/devel-docs

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

# XXX
CONFIGURE_ARGS += --without-webkit2

.include <bsd.port.mk>
