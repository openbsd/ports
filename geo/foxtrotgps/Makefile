# $OpenBSD: Makefile,v 1.18 2018/04/13 06:27:16 kirby Exp $

COMMENT =		lightweight mapping application for use with or without GPS

DISTNAME =		foxtrotgps-1.2.1

CATEGORIES =		geo x11

HOMEPAGE =		http://www.foxtrotgps.org/

MASTER_SITES =		${HOMEPAGE}/releases/

MAINTAINER =		Kirill Bychkov <kirby@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 c cairo crypto curl exif
WANTLIB += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gps
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv intl lzma m
WANTLIB += nghttp2 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread sqlite3 ssl xcb xcb-render xcb-shm
WANTLIB += xml2 z

MODULES = 		lang/python \
			textproc/intltool

BUILD_DEPENDS = 	devel/gettext-tools \
			devel/gsettings-desktop-schemas
LIB_DEPENDS =		devel/libglade2 \
			databases/sqlite3 \
			graphics/libexif \
			misc/gpsd \
			net/curl \
			x11/gtk+2

RUN_DEPENDS = 		devel/desktop-file-utils \
			devel/gsettings-desktop-schemas

CONFIGURE_ENV += 	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl"

SEPARATE_BUILD = 	Yes
USE_GMAKE = 		Yes
CONFIGURE_STYLE =	gnu
NO_TEST = 		Yes

MODPY_ADJ_FILES = 	contrib/georss2foxtrotgps-poi
MODPY_RUNDEP = 		No

.include <bsd.port.mk>
