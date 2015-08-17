# $OpenBSD: Makefile,v 1.13 2015/08/17 19:52:40 sthen Exp $

COMMENT =	platform independent hotkey handling for Gtk+ applications

DISTNAME =	gtkhotkey-0.2.1
REVISION=	7
SHARED_LIBS =	gtkhotkey 0.0 #1.0
CATEGORIES =	x11

HOMEPAGE =	http://launchpad.net/gtkhotkey

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread-stubs
WANTLIB += xcb xcb-shm z ffi graphite2 gthread-2.0 harfbuzz pthread xcb-render

# launchpad sucks.
MASTER_SITES =	http://launchpadlibrarian.net/31288851/

MODULES =	devel/gettext \
		textproc/intltool
CONFIGURE_STYLE =gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =	x11/gtk+2

.include <bsd.port.mk>
