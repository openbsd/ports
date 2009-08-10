# $OpenBSD: Makefile,v 1.4 2009/08/10 06:31:08 kili Exp $

COMMENT =	library for writing single instance application

GNOME_PROJECT =	libunique
GNOME_VERSION =	1.0.8
PKGNAME =	${DISTNAME}p0

SHARED_LIBS =	unique-1.0 0.0 #.2.6
CATEGORIES =	devel

HOMEPAGE =	http://live.gnome.org/LibUnique

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

USE_X11 =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS =	${CONFIGURE_SHARED} \
			--with-x \
			--enable-gtk-doc=no

MODULES =	devel/gettext \
		x11/gnome

LIB_DEPENDS =	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		dbus-glib-1::x11/dbus-glib

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo dbus-1 expat \
		fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre \
		pixman-1 png pthread-stubs xcb z

.include <bsd.port.mk>
