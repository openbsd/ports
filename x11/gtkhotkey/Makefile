# $OpenBSD: Makefile,v 1.11 2015/03/16 18:07:59 naddy Exp $

COMMENT =	platform independent hotkey handling for Gtk+ applications


DISTNAME =	gtkhotkey-0.2.1
REVISION=	5
SHARED_LIBS =	gtkhotkey 0.0 #1.0
CATEGORIES =	x11

HOMEPAGE =	http://launchpad.net/gtkhotkey

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

# launchpad sucks.
MASTER_SITES =	http://launchpadlibrarian.net/31288851/

MODULES =	devel/gettext \
		textproc/intltool
CONFIGURE_STYLE =gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

LIB_DEPENDS =	x11/gtk+2

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0 pthread-stubs xcb z

.include <bsd.port.mk>
