# $OpenBSD: Makefile,v 1.8 2013/09/27 17:49:05 ajacoutot Exp $

COMMENT =		lightweight mapping application for use with or without GPS

DISTNAME =		foxtrotgps-1.1.1
REVISION =		5

CATEGORIES =		geo x11

HOMEPAGE =		http://www.foxtrotgps.org/

MASTER_SITES =		${HOMEPAGE}/releases/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo crypto curl dbus-1 dbus-glib-1
WANTLIB += exif expat ffi fontconfig freetype gconf-2 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gps gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += idn m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs sqlite3 ssl
WANTLIB += xcb xcb-render xcb-shm xml2 z

MODULES = 		devel/gettext \
			lang/python \
			devel/gconf2 \
			textproc/intltool

LIB_DEPENDS =		devel/libglade2 \
			graphics/libexif \
			misc/gpsd \
			net/curl \
			x11/gtk+2

RUN_DEPENDS = 		devel/desktop-file-utils

CONFIGURE_ENV += 	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl" \
			GCONF_SCHEMA_FILE_DIR=${SCHEMAS_INSTDIR}

USE_GMAKE = 		Yes
CONFIGURE_STYLE =	gnu
NO_TEST = 		Yes

MODGCONF2_SCHEMAS_DIR = foxtrotgps

MODPY_ADJ_FILES = 	contrib/georss2foxtrotgps-poi
MODPY_RUNDEP = 		No

.include <bsd.port.mk>
