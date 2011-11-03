# $OpenBSD: Makefile,v 1.13 2011/11/03 17:35:12 jasper Exp $

COMMENT =		lightweight mapping application for use with or without GPS

DISTNAME =		tangogps-0.99.4
REVISION =		6

CATEGORIES =		geo

HOMEPAGE =		http://www.tangogps.org/

MASTER_SITES =		${HOMEPAGE}/downloads/

MAINTAINER =		Kirill Bychkov <yason@linklevel.net>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo crypto curl dbus-1 dbus-glib-1
WANTLIB += exif expat ffi fontconfig freetype gconf-2 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 idn m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += soup-2.4 sqlite3 ssl xcb xcb-render xcb-shm xml2 z

MODULES = 		devel/gettext
LIB_DEPENDS =		devel/atk \
			net/curl \
			graphics/libexif \
			devel/gconf2 \
			databases/sqlite3 \
			devel/libsoup \
			x11/gtk+2

RUN_DEPENDS = 		devel/desktop-file-utils

CONFIGURE_ENV += 	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl"

FAKE_FLAGS+=		localedir="${PREFIX}/share/locale"


CONFIGURE_STYLE =	autoconf gnu
AUTOCONF_VERSION =	2.64
NO_REGRESS = 		Yes

.include <bsd.port.mk>
