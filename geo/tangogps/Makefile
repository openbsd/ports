# $OpenBSD: Makefile,v 1.2 2010/04/18 21:18:36 landry Exp $

COMMENT =		lightweight mapping application for use with or without GPS

DISTNAME =		tangogps-0.99.3
PKGNAME =		${DISTNAME}p0

CATEGORIES =		geo

HOMEPAGE =		http://www.tangogps.org/

MASTER_SITES =		${HOMEPAGE}/downloads/

MAINTAINER =		Kirill Bychkov <yason@linklevel.net>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB = 		ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
			Xfixes Xi Xinerama Xrandr Xrender c cairo crypto dbus-1 \
			dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 \
			gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 \
			gobject-2.0 gthread-2.0 gtk-x11-2.0 iconv idn intl m \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
			png pthread pthread-stubs ssl xcb xcb-render \
			xcb-render-util xml2 z

MODULES = 		devel/gettext
LIB_DEPENDS =		atk-1.0::devel/atk \
			curl::net/curl \
			exif::graphics/libexif \
			gconf-2::devel/gconf2 \
			sqlite3::databases/sqlite3

RUN_DEPENDS = 		::devel/desktop-file-utils

CONFIGURE_ENV += 	CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl"
USE_X11 =		Yes
CONFIGURE_STYLE =	gnu

NO_REGRESS = 		Yes

.include <bsd.port.mk>
