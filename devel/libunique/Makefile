# $OpenBSD: Makefile,v 1.22 2013/04/16 13:17:00 ajacoutot Exp $

# XXX fix building with glib2 >= 2.29 (G_CONST_RETURN is deprecated)
CFLAGS +=	"-DG_CONST_RETURN=const"

COMMENT =	library for writing single instance GTK+2 applications

GNOME_PROJECT =	libunique
GNOME_VERSION =	1.1.6
REVISION=	4

SHARED_LIBS +=  unique-1.0           2.0      # .100.6
CATEGORIES =	devel

HOMEPAGE =	http://live.gnome.org/LibUnique

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo dbus-1
WANTLIB += dbus-glib-1 drm expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread-stubs stdc++
WANTLIB += xcb xcb-render xcb-shm z ffi

MODGNOME_TOOLS= 	gi

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-x

MODULES =	devel/gettext \
		x11/gnome

LIB_DEPENDS =	x11/gtk+2 \
		x11/dbus-glib

.include <bsd.port.mk>
