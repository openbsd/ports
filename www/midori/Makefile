# $OpenBSD: Makefile,v 1.10 2009/07/24 12:04:28 landry Exp $

COMMENT =	lightweight web browser

XFCE_VERSION =	0.1.8
XFCE_GOODIE =	midori

MAINTAINER =	Landry Breuil <gaston@gcu.info>
CATEGORIES =	www

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	x11/xfce4 devel/waf

USE_X11 =	Yes
DESKTOP_FILES =	Yes
NO_REGRESS =	Yes

LIB_DEPENDS =	webkit-1.0:webkit->=1.1.5v0:www/webkit \
		idn::devel/libidn \
		sqlite3::databases/sqlite3 \
		unique-1.0::devel/libunique \
		soup-2.4:libsoup->=2.24.3p0:devel/libsoup

# pick sqlite
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include"

BUILD_DEPENDS =	::textproc/py-docutils \
		::x11/gnome/librsvg

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz \
		gmodule-2.0 gnutls gobject-2.0 gthread-2.0 gtk-x11-2.0 intl \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread sqlite3 z \
		cairo pixman-1 png xml2

.include <bsd.port.mk>
