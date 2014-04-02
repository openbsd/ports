# $OpenBSD: Makefile,v 1.28 2014/04/02 09:36:10 jasper Exp $

# XXX fix building with glib2 >= 2.29 (G_CONST_RETURN is deprecated)
CFLAGS +=	"-DG_CONST_RETURN=const"

COMMENT =	library for writing single instance GTK+2 applications

GNOME_PROJECT =	libunique
GNOME_VERSION =	1.1.6
REVISION=	7

SHARED_LIBS +=  unique-1.0           2.0      # .100.6
CATEGORIES =	devel

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

EXTRACT_SUFX=		.tar.bz2

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z ffi

MODGNOME_TOOLS +=	gobject-introspection

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-x

MODULES =	devel/gettext \
		x11/gnome

LIB_DEPENDS =	x11/gtk+2 \
		x11/dbus-glib

.include <bsd.port.mk>
