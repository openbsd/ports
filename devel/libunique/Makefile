# $OpenBSD: Makefile,v 1.2 2009/03/19 19:12:41 landry Exp $

COMMENT =	library for writing single instance application

DISTNAME =	unique-1.0.6
PKGNAME =	lib${DISTNAME}

SHARED_LIBS =	unique-1.0 0.0 #.2.0
CATEGORIES =	devel

HOMEPAGE =	http://live.gnome.org/LibUnique
MASTER_SITES =	http://www.gnome.org/~ebassi/source/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
MODULES =	devel/gettext

LIB_DEPENDS =	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		dbus-glib-1::x11/dbus-glib

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo dbus-1 expat \
		fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png z

.include <bsd.port.mk>
