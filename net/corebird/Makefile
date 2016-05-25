# $OpenBSD: Makefile,v 1.5 2016/05/25 16:46:10 awolk Exp $

COMMENT =		native Gtk+ Twitter client

GH_ACCOUNT =		baedert
GH_PROJECT =		corebird
GH_TAGNAME =		1.2.2

CATEGORIES =		net

HOMEPAGE =		http://corebird.baedert.org/

MAINTAINER =		Adam Wolk <awolk@openbsd.org>

# License GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 atk-bridge-2.0 atspi
WANTLIB += c cairo cairo-gobject dbus-1 epoxy expat ffi fontconfig
WANTLIB += freetype gdk-3 gdk_pixbuf-2.0 gee-0.8 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gstbase-1.0 gstreamer-1.0
WANTLIB += gstvideo-1.0 gthread-2.0 gtk-3 harfbuzz json-glib-1.0
WANTLIB += lzma m orc-0.4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs rest-0.7 soup-2.4
WANTLIB += soup-gnome-2.4 sqlite3 xcb xcb-render xcb-shm xml2
WANTLIB += z

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.14

MODULES =		devel/dconf \
			devel/gettext \
			textproc/intltool \
			x11/gnome

MODGNOME_TOOLS =	desktop-file-utils \
			gtk-update-icon-cache \
			vala

LIB_DEPENDS =		devel/json-glib \
			devel/libgee \
			devel/libsoup>=2.4 \
			devel/orc \
			net/librest>=0.7.91 \
			multimedia/gstreamer1/core \
			multimedia/gstreamer1/plugins-base \
			x11/gtk+3

BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool

RUN_DEPENDS =		multimedia/gstreamer1/plugins-bad \
			multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-libav \

CONFIGURE_STYLE =	gnu
USE_GMAKE =		Yes

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		./autogen.sh

.include <bsd.port.mk>
