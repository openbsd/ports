# $OpenBSD: Makefile,v 1.8 2016/12/28 17:10:54 awolk Exp $

COMMENT =		native Gtk+ Twitter client

V =			1.3.3
DISTNAME =		corebird-${V}
MASTER_SITES =		https://github.com/baedert/corebird/releases/download/${V}/

EXTRACT_SUFX =		.tar.xz
CATEGORIES =		net

HOMEPAGE =		http://corebird.baedert.org/

MAINTAINER =		Adam Wolk <awolk@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gstbase-1.0 gstreamer-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz json-glib-1.0
WANTLIB += lzma m orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs rest-0.7 soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 xcb xcb-render xcb-shm xml2
WANTLIB += z

MODULES =		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS =	desktop-file-utils \
			gtk-update-icon-cache \
			vala

LIB_DEPENDS =		devel/json-glib \
			devel/libsoup>=2.4 \
			devel/orc \
			net/librest>=0.7.91 \
			multimedia/gstreamer1/core \
			multimedia/gstreamer1/plugins-base \
			x11/gtk+3

RUN_DEPENDS =		multimedia/gstreamer1/plugins-bad \
			multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-libav \

CONFIGURE_STYLE =	gnu
USE_GMAKE =		Yes

.include <bsd.port.mk>
